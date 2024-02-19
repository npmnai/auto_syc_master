*** Settings ***
Library  SeleniumLibrary
Library    ../Libraries/Common.py
Library    String
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsNewStudy.py
Variables  ../SCE_PageLocators/SCELocatorsStudies.py
Variables  ../SCE_PageLocators/SCELocatorsUserAccess.py
Variables  ../SCE_PageLocators/SCELocatorsAppFolders.py
Variables  ../SCE_PageLocators/SCE_LocatorsDownloads.py
Variables  ../SCE_PageLocators/SCE_LocatorsAuditLog.py

*** Keywords ***
Check Audit Log for Study and File Creation
    Wait Until Element Is Visible    ${AuditLog}
    Click Element    ${AuditLog}
    Sleep    5
    Element Should Be Visible    ${StudyCreateInLog}
    Element Should Be Visible    ${FileCreateInLog}

Export Audit Log as CSV and PDF
    Wait Until Element Is Visible    ${AuditLog}
    Click Element    ${AuditLog}
    Sleep    5
    Wait Until Element Is Visible    ${ExportFormatSelect}
    Select From List By Value    ${ExportFormatSelect}      csv
    Sleep    3
    Wait Until Element Is Visible    ${ExportLog}
    Click Element    ${ExportLog}
    Sleep    3
    Wait Until Element Is Visible    ${DownloadsPrompt}
    Click Element    ${DownloadsPrompt}
    Sleep    5
    Switch Window       locator=NEW
#    Wait Until Element Is Visible    ${ReadyToDownload2}    timeout=30
    Sleep    30
    Wait Until Element Is Visible    ${RefreshDownloads}
    Click Element    ${RefreshDownloads}
    Sleep    5
    Wait Until Element Is Visible    ${FirstCSVFileName}
    ${file_name}=       Get Text    ${FirstCSVFileName}
    Wait Until Element Is Visible    ${FirstDownloadButton}
    Click Element    ${FirstDownloadButton}
    Sleep    10
    ${file_path}=    Set Variable    C:\\Users\\siddh\\Downloads\\${file_name}
    Run Keyword If   ${{os.path.exists($file_path)}} is False    Fail        File does not exist
    Sleep    3
    ${modExitLog}=    Replace String  ${ExitLog}  xyz  ${StudyData}
    Wait Until Element Is Visible    ${modExitLog}
    Click Element    ${modExitLog}
    Sleep    5
    Wait Until Element Is Visible    ${AuditLog}
    Click Element    ${AuditLog}
    Sleep    5
    Wait Until Element Is Visible    ${ExportFormatSelect}
    Select From List By Value    ${ExportFormatSelect}      pdf
    Sleep    3
    Wait Until Element Is Visible    ${ExportLog}
    Click Element    ${ExportLog}
    Sleep    3
    Wait Until Element Is Visible    ${DownloadsPrompt}
    Click Element    ${DownloadsPrompt}
    Sleep    5
    Switch Window       locator=NEW
#    Wait Until Element Is Visible    ${ReadyToDownload2}    timeout=30
    Sleep    30
    Wait Until Element Is Visible    ${RefreshDownloads}
    Click Element    ${RefreshDownloads}
    Sleep    5
    Wait Until Element Is Visible    ${FirstPDFFileName}
    ${file_name}=       Get Text    ${FirstPDFFileName}
    Wait Until Element Is Visible    ${FirstDownloadButton}
    Click Element    ${FirstDownloadButton}
    Sleep    10
    ${file_path}=    Set Variable    C:\\Users\\siddh\\Downloads\\${file_name}
    Run Keyword If   ${{os.path.exists($file_path)}} is False    Fail        File does not exist
    Sleep    3
