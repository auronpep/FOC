from __future__ import annotations

import csv
import datetime as dt
import json
import re
import zipfile
from pathlib import Path
from xml.sax.saxutils import escape

OUT = Path(r"C:\FOC\outputs\barmatrix-c-drive-index-20260620-223636")
XLSX = OUT / "barmatrix_c_drive_index_full.xlsx"

NUMERIC_HEADERS = {
    "files",
    "folder_rows",
    "size_bytes",
    "errors",
    "skipped_reparse_or_excluded",
    "seconds",
    "direct_file_count",
    "direct_folder_count",
    "direct_size_bytes",
}

INVALID_XML = re.compile(r"[\x00-\x08\x0B\x0C\x0E-\x1F]")


def clean(value: object) -> str:
    if value is None:
        return ""
    return INVALID_XML.sub("", str(value))


def col_name(index: int) -> str:
    index += 1
    out = ""
    while index:
        index, rem = divmod(index - 1, 26)
        out = chr(65 + rem) + out
    return out


def cell_xml(row: int, col: int, value: object, header: str = "", style: int = 0) -> str:
    ref = f"{col_name(col)}{row}"
    text = clean(value)
    style_attr = f' s="{style}"' if style else ""
    if row != 1 and header in NUMERIC_HEADERS and text != "":
        try:
            number = float(text)
            if number.is_integer():
                text = str(int(number))
        except ValueError:
            pass
        else:
            return f'<c r="{ref}"{style_attr}><v>{text}</v></c>'
    if text == "":
        return f'<c r="{ref}"{style_attr}/>'
    return f'<c r="{ref}" t="inlineStr"{style_attr}><is><t>{escape(text)}</t></is></c>'


def write_text(handle, text: str) -> None:
    handle.write(text.encode("utf-8"))


def write_sheet(zipf: zipfile.ZipFile, name: str, sheet_path: str, rows_iter, headers: list[str]) -> int:
    max_col = max(1, len(headers))
    filter_ref = f"A1:{col_name(max_col - 1)}1048576"
    with zipf.open(sheet_path, "w") as handle:
        write_text(
            handle,
            '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
            '<worksheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main">'
            '<sheetViews><sheetView workbookViewId="0">'
            '<pane ySplit="1" topLeftCell="A2" activePane="bottomLeft" state="frozen"/>'
            '<selection pane="bottomLeft"/>'
            '</sheetView></sheetViews>'
            '<sheetData>',
        )
        count = 0
        for count, row in enumerate(rows_iter, start=1):
            write_text(handle, f'<row r="{count}">')
            for col, value in enumerate(row):
                header = headers[col] if col < len(headers) else ""
                write_text(handle, cell_xml(count, col, value, header, 1 if count == 1 else 0))
            write_text(handle, "</row>")
        write_text(handle, f'</sheetData><autoFilter ref="{filter_ref}"/></worksheet>')
    return count


def tsv_rows(path: Path):
    with path.open("r", encoding="utf-8", newline="") as handle:
        reader = csv.reader(handle, delimiter="\t")
        yield from reader


def read_tsv(path: Path) -> list[list[str]]:
    return list(tsv_rows(path))


def first_tsv_row(path: Path) -> list[str]:
    with path.open("r", encoding="utf-8", newline="") as handle:
        reader = csv.reader(handle, delimiter="\t")
        return next(reader)


def sheet_name_xml(name: str) -> str:
    return escape(name[:31])


def make_summary_rows() -> list[list[object]]:
    root_summary = read_tsv(OUT / "root_summary.tsv")
    headers, rows = root_summary[0], root_summary[1:]
    idx = {name: i for i, name in enumerate(headers)}
    totals = {
        "roots": len(rows),
        "folders": sum(int(r[idx["folder_rows"]]) for r in rows),
        "files": sum(int(r[idx["files"]]) for r in rows),
        "bytes": sum(int(r[idx["size_bytes"]]) for r in rows),
        "errors": sum(int(r[idx["errors"]]) for r in rows),
        "skipped": sum(int(r[idx["skipped_reparse_or_excluded"]]) for r in rows),
        "seconds": round(sum(float(r[idx["seconds"]]) for r in rows), 2),
    }
    return [
        ["metric", "value"],
        ["scan_mode", "read-only filesystem enumeration"],
        ["indexed_roots", totals["roots"]],
        ["folder_rows", totals["folders"]],
        ["file_rows", totals["files"]],
        ["total_size_bytes", totals["bytes"]],
        ["total_size_gb", round(totals["bytes"] / (1024**3), 2)],
        ["enumeration_errors", totals["errors"]],
        ["skipped_reparse_or_excluded", totals["skipped"]],
        ["scan_seconds", totals["seconds"]],
        ["workbook_path", str(XLSX)],
        ["note", r"Reparse points are listed but not followed; this output folder is excluded from the C:\FOC scan."],
    ]


def workbook_xml(sheets: list[tuple[str, int]]) -> str:
    sheet_nodes = "".join(
        f'<sheet name="{sheet_name_xml(name)}" sheetId="{i}" r:id="rId{i}"/>'
        for name, i in sheets
    )
    return (
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
        '<workbook xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main" '
        'xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">'
        f"<sheets>{sheet_nodes}</sheets></workbook>"
    )


def workbook_rels(sheets: list[tuple[str, int]]) -> str:
    sheet_rels = "".join(
        f'<Relationship Id="rId{i}" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet" Target="worksheets/sheet{i}.xml"/>'
        for _, i in sheets
    )
    return (
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
        '<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">'
        f"{sheet_rels}"
        f'<Relationship Id="rId{len(sheets)+1}" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles" Target="styles.xml"/>'
        "</Relationships>"
    )


def content_types(sheets: list[tuple[str, int]]) -> str:
    sheet_overrides = "".join(
        f'<Override PartName="/xl/worksheets/sheet{i}.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"/>'
        for _, i in sheets
    )
    return (
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
        '<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">'
        '<Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>'
        '<Default Extension="xml" ContentType="application/xml"/>'
        '<Override PartName="/xl/workbook.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"/>'
        '<Override PartName="/xl/styles.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"/>'
        '<Override PartName="/docProps/core.xml" ContentType="application/vnd.openxmlformats-package.core-properties+xml"/>'
        '<Override PartName="/docProps/app.xml" ContentType="application/vnd.openxmlformats-officedocument.extended-properties+xml"/>'
        f"{sheet_overrides}</Types>"
    )


STYLES = """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<styleSheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main">
  <fonts count="2"><font><sz val="11"/><name val="Calibri"/></font><font><b/><color rgb="FFFFFFFF"/><sz val="11"/><name val="Calibri"/></font></fonts>
  <fills count="3"><fill><patternFill patternType="none"/></fill><fill><patternFill patternType="gray125"/></fill><fill><patternFill patternType="solid"><fgColor rgb="FF1F4E78"/><bgColor indexed="64"/></patternFill></fill></fills>
  <borders count="1"><border><left/><right/><top/><bottom/><diagonal/></border></borders>
  <cellStyleXfs count="1"><xf numFmtId="0" fontId="0" fillId="0" borderId="0"/></cellStyleXfs>
  <cellXfs count="2"><xf numFmtId="0" fontId="0" fillId="0" borderId="0" xfId="0"/><xf numFmtId="0" fontId="1" fillId="2" borderId="0" xfId="0" applyFont="1" applyFill="1"/></cellXfs>
  <cellStyles count="1"><cellStyle name="Normal" xfId="0" builtinId="0"/></cellStyles>
</styleSheet>"""


def main() -> None:
    manifest = json.loads((OUT / "scan_manifest.json").read_text(encoding="utf-8-sig"))
    data_sheets: list[tuple[str, Path | None, list[list[object]] | None]] = [
        ("Summary", None, make_summary_rows()),
        ("Scope", OUT / "scope.tsv", None),
        ("Root Summary", OUT / "root_summary.tsv", None),
        ("Folders", OUT / "folders.tsv", None),
    ]
    for i, file_part in enumerate(manifest["FileParts"], start=1):
        data_sheets.append((f"Files {i:03d}", Path(file_part), None))
    data_sheets.append(("Errors", OUT / "errors.tsv", None))

    sheets = [(name, i) for i, (name, _, _) in enumerate(data_sheets, start=1)]
    row_counts: dict[str, int] = {}
    with zipfile.ZipFile(XLSX, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=6) as zipf:
        zipf.writestr("[Content_Types].xml", content_types(sheets))
        zipf.writestr("_rels/.rels", '<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships"><Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="xl/workbook.xml"/><Relationship Id="rId2" Type="http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties" Target="docProps/core.xml"/><Relationship Id="rId3" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties" Target="docProps/app.xml"/></Relationships>')
        zipf.writestr("xl/workbook.xml", workbook_xml(sheets))
        zipf.writestr("xl/_rels/workbook.xml.rels", workbook_rels(sheets))
        zipf.writestr("xl/styles.xml", STYLES)
        now = dt.datetime.now(dt.timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")
        zipf.writestr("docProps/core.xml", f'<?xml version="1.0" encoding="UTF-8" standalone="yes"?><cp:coreProperties xmlns:cp="http://schemas.openxmlformats.org/package/2006/metadata/core-properties" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dcmitype="http://purl.org/dc/dcmitype/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"><dc:title>BarMatrix C Drive Index</dc:title><dc:creator>Codex</dc:creator><cp:lastModifiedBy>Codex</cp:lastModifiedBy><dcterms:created xsi:type="dcterms:W3CDTF">{now}</dcterms:created><dcterms:modified xsi:type="dcterms:W3CDTF">{now}</dcterms:modified></cp:coreProperties>')
        zipf.writestr("docProps/app.xml", f'<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Properties xmlns="http://schemas.openxmlformats.org/officeDocument/2006/extended-properties" xmlns:vt="http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes"><Application>Codex</Application><HeadingPairs><vt:vector size="2" baseType="variant"><vt:variant><vt:lpstr>Worksheets</vt:lpstr></vt:variant><vt:variant><vt:i4>{len(sheets)}</vt:i4></vt:variant></vt:vector></HeadingPairs><TitlesOfParts><vt:vector size="{len(sheets)}" baseType="lpstr">{"".join(f"<vt:lpstr>{sheet_name_xml(name)}</vt:lpstr>" for name, _ in sheets)}</vt:vector></TitlesOfParts></Properties>')

        for sheet_index, (name, source_path, static_rows) in enumerate(data_sheets, start=1):
            if static_rows is not None:
                headers = [str(x) for x in static_rows[0]]
                rows_iter = iter(static_rows)
            else:
                headers = first_tsv_row(source_path)
                rows_iter = tsv_rows(source_path)
            rows = write_sheet(zipf, name, f"xl/worksheets/sheet{sheet_index}.xml", rows_iter, headers)
            row_counts[name] = rows - 1
            print(f"{name}: {rows - 1} data rows")

    (OUT / "openxml_build_summary.json").write_text(
        json.dumps({"xlsx": str(XLSX), "row_counts": row_counts}, indent=2),
        encoding="utf-8",
    )
    print(json.dumps({"xlsx": str(XLSX), "row_counts": row_counts}, indent=2))


if __name__ == "__main__":
    main()
