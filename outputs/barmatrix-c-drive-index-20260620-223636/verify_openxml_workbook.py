import json
import re
import zipfile
from pathlib import Path

out = Path(r"C:\FOC\outputs\barmatrix-c-drive-index-20260620-223636")
xlsx = out / "barmatrix_c_drive_index_full.xlsx"
expected = json.loads((out / "openxml_build_summary.json").read_text(encoding="utf-8"))["row_counts"]

with zipfile.ZipFile(xlsx) as zf:
    bad = zf.testzip()
    workbook_xml = zf.read("xl/workbook.xml").decode("utf-8")
    sheets = re.findall(r'<sheet name="([^"]+)" sheetId="(\d+)"', workbook_xml)
    counts = {}
    for name, sheet_id in sheets:
        row_count = 0
        tail = b""
        with zf.open(f"xl/worksheets/sheet{sheet_id}.xml") as sheet:
            while True:
                chunk = sheet.read(1024 * 1024)
                if not chunk:
                    break
                block = tail + chunk
                row_count += block.count(b"<row ")
                tail = block[-4:]
        counts[name] = max(0, row_count - 1)

result = {
    "xlsx": str(xlsx),
    "size_bytes": xlsx.stat().st_size,
    "zip_test": bad,
    "sheet_count": len(counts),
    "counts_match": counts == expected,
    "counts": counts,
}
(out / "verification.json").write_text(json.dumps(result, indent=2), encoding="utf-8")
print(json.dumps(result, indent=2))
