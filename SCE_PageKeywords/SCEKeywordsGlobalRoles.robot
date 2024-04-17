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
Variables  ../SCE_PageLocators/SCELocatorsGlobalRoles.py
Resource    ../Libraries/UILib.robot

*** Keywords ***
Create New Global Role
    Wait Until Web Element Is Visible    Home    OpenGlobalRoles    ${OpenGlobalRoles}
    Click Web Element    Home    OpenGlobalRoles    ${OpenGlobalRoles}
    Wait Until Web Element Is Visible    GlobalRoles    AddNewGlobalRole    ${AddNewGlobalRole}
    Click Web Element    GlobalRoles    AddNewGlobalRole    ${AddNewGlobalRole}
    Wait Until Web Element Is Visible    GlobalRoles    GlobalRoleCreatedPrompt    ${GlobalRoleCreatedPrompt}
    Sleep    10
#    Wait Until Element Is Visible    ${GlobalRoleActionMenu}
#    Click Element    ${GlobalRoleActionMenu}
#    Sleep    3
#    Wait Until Element Is Visible    ${RenameGlobalRoleOption}
#    Click Element    ${RenameGlobalRoleOption}
#    Sleep    3
#    Wait Until Element Is Visible    ${GlobalRoleNameInput}
#    Click Element    ${GlobalRoleNameInput}
#    @{list} =    Get Name And Desc      global_role
#    ${GlobalRoleName} =  Set Variable    ${list}[0]
##    Set Suite Variable    ${GlobalRoleName}
#    Input Text    ${GlobalRoleNameInput}    ${GlobalRoleName}\n
#    Wait Until Element Is Visible    ${GlobalRoleNameUpdatedPrompt}     timeout=30
#    Sleep    3
    ${GlobalRoleName} =      Get Text    ${FirstGlobalRoleName}
    Wait Until Web Element Is Visible    GlobalRoles    GlobalRoleFilterMenu    ${GlobalRoleFilterMenu}
    Click Web Element    GlobalRoles    GlobalRoleFilterMenu    ${GlobalRoleFilterMenu}
    Wait Until Web Element Is Visible    GlobalRoles    GlobalRoleFilterNameSelect    ${GlobalRoleFilterNameSelect}
    Click Web Element    GlobalRoles    GlobalRoleFilterNameSelect    ${GlobalRoleFilterNameSelect}
    Wait Until Web Element Is Visible    GlobalRoles    GlobalRoleFilterNameInput    ${GlobalRoleFilterNameInput}
    Fill Text    GlobalRoles    GlobalRoleFilterNameInput    ${GlobalRoleFilterNameInput}    ${GlobalRoleName}\n
    Wait Until Web Element Is Visible    GlobalRoles    GlobalRoleFilterNameSelect    ${GlobalRoleFilterNameSelect}
    Click Web Element    GlobalRoles    GlobalRoleFilterNameSelect    ${GlobalRoleFilterNameSelect}
    Wait Until Web Element Is Visible    GlobalRoles    GlobalRoleFilterApply    ${GlobalRoleFilterApply}
    Click Web Element    GlobalRoles    GlobalRoleFilterApply    ${GlobalRoleFilterApply}
    Wait Until Web Element Is Visible    GlobalRoles    UnblindedPerm    ${UnblindedPerm}
    Click Web Element    GlobalRoles    UnblindedPerm    ${UnblindedPerm}
    Wait Until Web Element Is Visible    GlobalRoles    CanExportPerm    ${CanExportPerm}
    Click Web Element    GlobalRoles    CanExportPerm    ${CanExportPerm}
    Wait Until Web Element Is Visible    GlobalRoles    ChangeRolePerm    ${ChangeRolePerm}
    Click Web Element    GlobalRoles    ChangeRolePerm    ${ChangeRolePerm}
    Wait Until Web Element Is Visible    GlobalRoles    ExecutePerm    ${ExecutePerm}
    Click Web Element    GlobalRoles    ExecutePerm    ${ExecutePerm}
    Wait Until Web Element Is Visible    GlobalRoles    ManageAccessPerm    ${ManageAccessPerm}
    Click Web Element    GlobalRoles    ManageAccessPerm    ${ManageAccessPerm}
    Wait Until Web Element Is Visible    GlobalRoles    ManageTasksPerm    ${ManageTasksPerm}
    Click Web Element    GlobalRoles    ManageTasksPerm    ${ManageTasksPerm}
    Wait Until Web Element Is Visible    GlobalRoles    SaveGlobalRoleChanges    ${SaveGlobalRoleChanges}
    Click Web Element    GlobalRoles    SaveGlobalRoleChanges    ${SaveGlobalRoleChanges}
    Wait Until Web Element Is Visible    GlobalRoles    GlobalRoleChangesSavedPrompt    ${GlobalRoleChangesSavedPrompt}
    Wait Until Web Element Is Visible    GlobalRoles    GlobalRoleFilterMenu    ${GlobalRoleFilterMenu}
    Click Web Element    GlobalRoles    GlobalRoleFilterMenu    ${GlobalRoleFilterMenu}
    Wait Until Web Element Is Visible    GlobalRoles    GlobalRoleFilterClear    ${GlobalRoleFilterClear}
    Click Web Element    GlobalRoles    GlobalRoleFilterClear    ${GlobalRoleFilterClear}
    Wait Until Web Element Is Visible    GlobalRoles    GlobalRoleFilterMenu    ${GlobalRoleFilterMenu}
    Click Web Element    GlobalRoles    GlobalRoleFilterMenu    ${GlobalRoleFilterMenu}