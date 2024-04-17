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
Resource    ../Libraries/UILib.robot

*** Keywords ***
Check Audit Log for Study and File Creation
    Wait Until Web Element Is Visible    Study    AuditLog    ${AuditLog}
    Click Web Element    Study    AuditLog    ${AuditLog}
    Wait Until Web Element Is Visible    AuditLog    StudyCreateInLog    ${StudyCreateInLog}
    Wait Until Web Element Is Visible    AuditLog    StudyCreateInLog    ${FileCreateInLog}

Export Audit Log as CSV and PDF
    Wait Until Web Element Is Visible    Study    AuditLog    ${AuditLog}
    Click Web Element    Study    AuditLog    ${AuditLog}
    Wait Until Web Element Is Visible    AuditLog    ExportFormatSelect    ${ExportFormatSelect}
    Select From List By Value    ${ExportFormatSelect}      csv
    Wait Until Web Element Is Visible    AuditLog    ExportLog    ${ExportLog}
    Click Web Element    AuditLog    ExportLog    ${ExportLog}
    Wait Until Web Element Is Visible    AuditLog    DownloadsPrompt    ${DownloadsPrompt}
    Click Web Element    AuditLog    DownloadsPrompt    ${DownloadsPrompt}
    Switch Window       locator=NEW
#    Wait Until Element Is Visible    ${ReadyToDownload2}    timeout=30
    Sleep    30
    Wait Until Web Element Is Visible    AuditLog    RefreshDownloads    ${RefreshDownloads}
    Click Web Element    AuditLog    RefreshDownloads    ${RefreshDownloads}
    Wait Until Web Element Is Visible    AuditLog    FirstCSVFileName    ${FirstCSVFileName}
    ${file_name}=       Get Text    ${FirstCSVFileName}
    Wait Until Web Element Is Visible    AuditLog    FirstDownloadButton    ${FirstDownloadButton}
    Click Web Element    AuditLog    FirstDownloadButton    ${FirstDownloadButton}
    Sleep    10
    ${file_path}=    Set Variable    C:\\Users\\siddh\\Downloads\\${file_name}
    Run Keyword If   ${{os.path.exists($file_path)}} is False    Fail        File does not exist
    Sleep    3
    ${modExitLog}=    Replace String  ${ExitLog}  xyz  ${StudyData}
    Wait Until Web Element Is Visible    AuditLog    modExitLog    ${modExitLog}
    Click Web Element    AuditLog    modExitLog    ${modExitLog}
    Wait Until Web Element Is Visible    Study    AuditLog    ${AuditLog}
    Click Web Element    Study    AuditLog    ${AuditLog}
    Wait Until Web Element Is Visible    AuditLog    ExportFormatSelect    ${ExportFormatSelect}
    Select From List By Value    ${ExportFormatSelect}      pdf
    Wait Until Web Element Is Visible    AuditLog    ExportLog    ${ExportLog}
    Click Web Element    AuditLog    ExportLog    ${ExportLog}
    Wait Until Web Element Is Visible    AuditLog    DownloadsPrompt    ${DownloadsPrompt}
    Click Web Element    AuditLog    DownloadsPrompt    ${DownloadsPrompt}
    Switch Window       locator=NEW
#    Wait Until Element Is Visible    ${ReadyToDownload2}    timeout=30
    Sleep    30
    Wait Until Web Element Is Visible    AuditLog    RefreshDownloads    ${RefreshDownloads}
    Click Web Element    AuditLog    RefreshDownloads    ${RefreshDownloads}
    Sleep    5
    Wait Until Web Element Is Visible    AuditLog    FirstPDFFileName    ${FirstPDFFileName}
    ${file_name}=       Get Text    ${FirstPDFFileName}
    Wait Until Web Element Is Visible    AuditLog    FirstDownloadButton    ${FirstDownloadButton}
    Click Web Element    AuditLog    FirstDownloadButton    ${FirstDownloadButton}
    Sleep    10
    ${file_path}=    Set Variable    C:\\Users\\siddh\\Downloads\\${file_name}
    Run Keyword If   ${{os.path.exists($file_path)}} is False    Fail        File does not exist
    Sleep    3
