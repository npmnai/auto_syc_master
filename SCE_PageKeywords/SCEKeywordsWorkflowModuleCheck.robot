*** Settings ***
Library  SeleniumLibrary
Library    ../Libraries/Common.py
Library    String
Variables  ../TestData/InputData.yaml
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsNewStudy.py
Variables  ../SCE_PageLocators/SCELocatorsStudies.py
Variables  ../SCE_PageLocators/SCELocatorsUserAccess.py
Variables  ../SCE_PageLocators/SCELocatorsAppFolders.py
Variables  ../SCE_PageLocators/SCE_LocatorsDownloads.py
Variables  ../SCE_PageLocators/SCELocatorsGlobalRoles.py
Variables  ../SCE_PageLocators/SCELocatorsWorkflowModuleCheck.py

*** Keywords ***
Create New Module Check
    Wait Until Element Is Visible    ${OpenModuleChecks}
    Click Element    ${OpenModuleChecks}
    Sleep    3
    Wait Until Element Is Visible    ${AddNewModule}
    Click Element    ${AddNewModule}
    Sleep    3
    @{list} =    Get Name And Desc      module
    ${ModuleName} =  Set Variable    ${list}[0]
    Wait Until Element Is Visible    ${InputModuleName}
    Input Text    ${InputModuleName}    ${ModuleName}
    Sleep    3
    Wait Until Element Is Visible    ${InputModuleDescription}
    Input Text    ${InputModuleDescription}    ${ModuleName}
    Sleep    3
    Wait Until Element Is Visible    ${SelectWaiverRole}
    Click Element    ${SelectWaiverRole}
    Sleep    3
    Wait Until Element Is Visible    ${InputWaiverRole}
    Click Element    ${InputWaiverRole}
    Sleep    2
    Input Text    ${InputWaiverRole}    ${WaiverRoleNameArg}\n
    Sleep    3
    Wait Until Element Is Visible    ${CreateButton}
    Click Element    ${CreateButton}
    Wait Until Element Is Visible    ${ModuleCreatedPrompt}     timeout=30
    Sleep    10
    ${modNewModuleCell}=    Replace String  ${NewModuleCell}  xyz  ${ModuleName}
    Scroll Element Into View    ${modNewModuleCell}
    Sleep    3
