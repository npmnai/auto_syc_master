*** Settings ***
Library    ExcelLibrary
#Library    RPA.Excel.Files

*** Keywords ***
Read Excel Cell Data
    [Arguments]  ${filename}  ${sheetname}  ${row}  ${col}
    Open Excel Document  ${filename}  docId1
    ${sheet}=  Get Sheet  ${sheetname}
    ${celldata}  Read Excel Cell  row_num=${row}  col_num=${col}
    [Return]  ${celldata}
    Close All Excel Documents

Read Excel Row Data
    [Arguments]  ${filename}  ${sheetname}  ${row}
    Open Excel Document  ${filename}  docId2
    Get Sheet  ${sheetname}
    @{rowdata}  Read Excel Row  ${row}
    [Return]  @{rowdata}
    Close All Excel Documents

Read Excel Column Data
    [Arguments]  ${filename}  ${sheetname}  ${col}
    Open Excel Document  ${filename}  docId3
    Get Sheet  ${sheetname}
    @{coldata}  Read Excel Column  ${col}
    [Return]  @{coldata}
    Close All Excel Documents