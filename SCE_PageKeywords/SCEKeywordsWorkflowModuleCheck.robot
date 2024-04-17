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
Resource    ../Libraries/UILib.robot

*** Keywords ***
Create New Module Check
    Wait Until Web Element Is Visible    Home    OpenModuleChecks    ${OpenModuleChecks}
    Click Web Element    Home    OpenModuleChecks    ${OpenModuleChecks}
    Wait Until Web Element Is Visible    ModuleChecks    AddNewModule    ${AddNewModule}
    Click Web Element    ModuleChecks    AddNewModule    ${AddNewModule}
    @{list} =    Get Name And Desc      module
    ${ModuleName} =  Set Variable    ${list}[0]
    Wait Until Web Element Is Visible    ModuleChecks    InputModuleName    ${InputModuleName}
    Fill Text    ModuleChecks    InputModuleName    ${InputModuleName}    ${ModuleName}
    Wait Until Web Element Is Visible    ModuleChecks    InputModuleDescription    ${InputModuleDescription}
    Fill Text    ModuleChecks    InputModuleDescription    ${InputModuleDescription}    ${ModuleName}
    Wait Until Web Element Is Visible    ModuleChecks    SelectWaiverRole    ${SelectWaiverRole}
    Click Web Element    ModuleChecks    SelectWaiverRole    ${SelectWaiverRole}
    Wait Until Web Element Is Visible    ModuleChecks    InputWaiverRole    ${InputWaiverRole}
    Click Web Element    ModuleChecks    InputWaiverRole    ${InputWaiverRole}
    Fill Text    ModuleChecks    InputWaiverRole    ${InputWaiverRole}    ${WaiverRoleNameArg}\n
    Wait Until Web Element Is Visible    ModuleChecks    CreateButton    ${CreateButton}
    Click Web Element    ModuleChecks    CreateButton    ${CreateButton}
    Wait Until Web Element Is Visible    ModuleChecks    ModuleCreatedPrompt    ${ModuleCreatedPrompt}
    Sleep    10
    ${modNewModuleCell}=    Replace String  ${NewModuleCell}  xyz  ${ModuleName}
    Scroll Element Into View    ${modNewModuleCell}
    Sleep    3
