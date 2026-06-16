# Lessons

- When generating `.xlsx` files from CSV-like rows, do not treat every cell as text. Headers and status labels can be strings, but numeric identifier columns such as `barmatrix_question_number` should be written as numeric cells and verified by inspecting the workbook cell type, not only by comparing displayed values.
