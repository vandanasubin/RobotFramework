import openpyxl
Workbook = openpyxl.load_workbook("../Resources/Datadriven_TestData.xlsx")


def fetch_max_rows(sheetname):
    Sh = Workbook[sheetname]
    return Sh.max_row


def fetch_max_col(sheetname):
    Sh = Workbook[sheetname]
    return Sh.max_column


def fetch_cellData(sheetname, row, column):
    Sh = Workbook[sheetname]
    Cell = Sh.cell(int(row), int(column))
    return Cell.value






