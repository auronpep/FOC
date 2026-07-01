import csv
import json
import subprocess
import sys
import unittest
from pathlib import Path
from tempfile import TemporaryDirectory

import openpyxl

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))

import ocq_agent_tools as tools


def make_workbook(path: Path) -> None:
    wb = openpyxl.Workbook()
    ws = wb.active
    ws.title = "QuestionBank"
    ws.append(
        [
            "BID",
            "Question",
            "A",
            "B",
            "C",
            "D",
        ]
    )
    ws.append(
        [
            10453,
            "Who wins the dispute?",
            "the friend is barred.",
            "the deed was never recorded.",
            "the friend did not know.",
            "the expenses were not proved.",
        ]
    )
    ws.append(
        [
            10422,
            "Which proposal is constitutional?",
            "Both proposals.",
            "Neither proposal.",
            "Proposal A only.",
            "Proposal B only.",
        ]
    )
    wb.save(path)


class OcqAgentToolsTest(unittest.TestCase):
    def test_export_questions_writes_one_blind_markdown_file_per_question(self):
        with TemporaryDirectory() as tmp:
            root = Path(tmp)
            workbook = root / "OCQ.xlsx"
            out_dir = root / "OCQ"
            make_workbook(workbook)

            result = tools.export_questions(workbook, out_dir)

            self.assertEqual(result["written"], 2)
            qfile = out_dir / "10453.md"
            self.assertTrue(qfile.exists())
            text = qfile.read_text(encoding="utf-8")
            self.assertNotIn("\n", text)
            self.assertIn("Here is Question Number 10453.", text)
            self.assertIn("Who wins the dispute? Answer Choices:", text)
            self.assertIn("A. the friend is barred.", text)
            self.assertIn("D. the expenses were not proved.", text)
            self.assertNotIn("Correct Answer", text)
            self.assertNotIn("Explanation", text)

    def test_prepare_batch_uses_queue_minus_existing_answers_and_stops_at_count(self):
        with TemporaryDirectory() as tmp:
            workspace = Path(tmp) / "agent"
            workspace.mkdir()
            (workspace / "queue.txt").write_text("10453\n10422\n10571\n", encoding="utf-8")
            with (workspace / "answers.csv").open("w", newline="", encoding="utf-8") as handle:
                writer = csv.DictWriter(handle, fieldnames=tools.ANSWER_COLUMNS)
                writer.writeheader()
                writer.writerow(
                    {
                        "agent_id": "adam",
                        "bid": "10453",
                        "answer_choice": "A",
                        "confidence_label": "easy",
                        "timestamp": "2026-06-28T00:00:00",
                    }
                )

            selected = tools.prepare_batch(workspace, count=1)

            self.assertEqual(selected, ["10422"])
            self.assertEqual((workspace / "current_batch.txt").read_text(encoding="utf-8"), "10422\n")

    def test_append_answer_validates_agent_choice_label_and_duplicate_bid(self):
        with TemporaryDirectory() as tmp:
            workspace = Path(tmp) / "agent"
            workspace.mkdir()

            tools.append_answer(
                workspace=workspace,
                agent_id="adam",
                bid="10453",
                answer_choice="C",
                confidence_label="Hard",
                timestamp="2026-06-28T00:00:00",
            )

            with (workspace / "answers.csv").open(encoding="utf-8") as handle:
                rows = list(csv.DictReader(handle))
            self.assertEqual(len(rows), 1)
            self.assertEqual(rows[0]["agent_id"], "adam")
            self.assertEqual(rows[0]["bid"], "10453")
            self.assertEqual(rows[0]["answer_choice"], "C")
            self.assertEqual(rows[0]["confidence_label"], "hard")

            with self.assertRaises(ValueError):
                tools.append_answer(
                    workspace=workspace,
                    agent_id="adam",
                    bid="10453",
                    answer_choice="A",
                    confidence_label="medium",
                    timestamp="2026-06-28T00:00:01",
                )

            with self.assertRaises(ValueError):
                tools.append_answer(
                    workspace=workspace,
                    agent_id="adam",
                    bid="10454",
                    answer_choice="A",
                    confidence_label="uncertain",
                    timestamp="2026-06-28T00:00:02",
                )

            with self.assertRaises(ValueError):
                tools.append_answer(
                    workspace=workspace,
                    agent_id="not a valid id",
                    bid="10455",
                    answer_choice="B",
                    confidence_label="easy",
                    timestamp="2026-06-28T00:00:03",
                )

    def test_initialize_agent_workspace_creates_editable_soul_and_local_tracking(self):
        with TemporaryDirectory() as tmp:
            root = Path(tmp)
            workspace = tools.initialize_agent_workspace(
                agents_root=root / "agents",
                agent_id="adam",
                display_name="OCQ Adam",
                primary_model="openai/gpt-5.3-codex-spark",
                soul_text="",
                question_ids=["10453", "10422"],
                question_bank_root=Path(r"C:\FOC\Workspace\OCQ"),
            )

            self.assertEqual(workspace, root / "agents" / "adam")
            agents_text = (workspace / "AGENTS.md").read_text(encoding="utf-8")
            self.assertIn("OCQ Adam", agents_text)
            self.assertIn("USER.md", agents_text)
            self.assertIn("ConfidenceLabel <easy|medium|hard>", agents_text)
            self.assertNotIn("SecondChoice", agents_text)
            self.assertIn("Test-Taker Profile", (workspace / "SOUL.md").read_text(encoding="utf-8"))
            self.assertIn("Boss", (workspace / "USER.md").read_text(encoding="utf-8"))
            self.assertFalse((workspace / "skills").exists())
            self.assertEqual((workspace / "queue.txt").read_text(encoding="utf-8"), "10453\n10422\n")
            header = (workspace / "answers.csv").read_text(encoding="utf-8").splitlines()[0]
            self.assertEqual(header, ",".join(tools.ANSWER_COLUMNS))

    def test_invoke_batch_uses_stable_agent_session_key_by_default(self):
        with TemporaryDirectory() as tmp:
            root = Path(tmp)
            agents_root = root / "agents"
            workspace = agents_root / "adam"
            workspace.mkdir(parents=True)
            (workspace / "queue.txt").write_text("10453\n", encoding="utf-8")
            (workspace / "answers.csv").write_text(tools.answer_csv_header(), encoding="utf-8")

            captured_args = root / "openclaw-args.json"
            fake_openclaw = root / "fake-openclaw.ps1"
            fake_openclaw.write_text(
                "$args | ConvertTo-Json -Compress | Set-Content -LiteralPath "
                f"'{captured_args}' -Encoding UTF8\n",
                encoding="utf-8",
            )

            result = subprocess.run(
                [
                    "pwsh",
                    "-NoProfile",
                    "-File",
                    str(ROOT / "scripts" / "Invoke-OCQAgentBatch.ps1"),
                    "-AgentId",
                    "adam",
                    "-Count",
                    "1",
                    "-AgentsRoot",
                    str(agents_root),
                    "-OpenClawPath",
                    str(fake_openclaw),
                    "-Launch",
                ],
                capture_output=True,
                text=True,
                check=False,
            )

            self.assertEqual(result.returncode, 0, result.stderr + result.stdout)
            args = json.loads(captured_args.read_text(encoding="utf-8-sig"))
            session_key = args[args.index("--session-key") + 1]
            self.assertEqual(session_key, "ocq-adam")

    def test_openclaw_registration_commands_do_not_push_model(self):
        with TemporaryDirectory() as tmp:
            root = Path(tmp)
            roster = root / "roster.csv"
            roster.write_text(
                ",".join(tools.ROSTER_COLUMNS)
                + "\nadam,OCQ Adam,openai/gpt-5.3-codex-spark,,true,pilot\n",
                encoding="utf-8",
            )

            commands = tools.build_openclaw_commands(roster, root / "agents")

            add_command = commands[0]
            self.assertIn("agents add adam", add_command)
            self.assertIn("--workspace", add_command)
            self.assertIn("--non-interactive", add_command)
            self.assertNotIn("--model", add_command)


if __name__ == "__main__":
    unittest.main()
