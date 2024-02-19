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

*** Keywords ***
Create New Global Role
    Wait Until Element Is Visible    ${OpenGlobalRoles}
    Click Element    ${OpenGlobalRoles}
    Sleep    3
    Wait Until Element Is Visible    ${AddNewGlobalRole}
    Click Element    ${AddNewGlobalRole}
    Wait Until Element Is Visible    ${GlobalRoleCreatedPrompt}     timeout=30
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
    Wait Until Element Is Visible    ${GlobalRoleFilterMenu}
    Click Element    ${GlobalRoleFilterMenu}
    Sleep    3
    Wait Until Element Is Visible    ${GlobalRoleFilterNameSelect}
    Click Element    ${GlobalRoleFilterNameSelect}
    Sleep    3
    Wait Until Element Is Visible    ${GlobalRoleFilterNameInput}
    Input Text    ${GlobalRoleFilterNameInput}    ${GlobalRoleName}\n
    Sleep    3
    Wait Until Element Is Visible    ${GlobalRoleFilterNameSelect}
    Click Element    ${GlobalRoleFilterNameSelect}
    Sleep    3
    Wait Until Element Is Visible    ${GlobalRoleFilterApply}
    Click Element    ${GlobalRoleFilterApply}
    Sleep    5
    Wait Until Element Is Visible    ${UnblindedPerm}
    Click Element    ${UnblindedPerm}
    Sleep    3
    Wait Until Element Is Visible    ${CanExportPerm}
    Click Element    ${CanExportPerm}
    Sleep    3
    Wait Until Element Is Visible    ${ChangeRolePerm}
    Click Element    ${ChangeRolePerm}
    Sleep    3
    Wait Until Element Is Visible    ${ExecutePerm}
    Click Element    ${ExecutePerm}
    Sleep    3
    Wait Until Element Is Visible    ${ManageAccessPerm}
    Click Element    ${ManageAccessPerm}
    Sleep    3
    Wait Until Element Is Visible    ${ManageTasksPerm}
    Click Element    ${ManageTasksPerm}
    Sleep    3
    Wait Until Element Is Visible    ${SaveGlobalRoleChanges}
    Click Element    ${SaveGlobalRoleChanges}
    Wait Until Element Is Visible    ${GlobalRoleChangesSavedPrompt}    timeout=30
    Sleep    3
    Wait Until Element Is Visible    ${GlobalRoleFilterMenu}
    Click Element    ${GlobalRoleFilterMenu}
    Sleep    3
    Wait Until Element Is Visible    ${GlobalRoleFilterClear}
    Click Element    ${GlobalRoleFilterClear}
    Sleep    3
    Wait Until Element Is Visible    ${GlobalRoleFilterMenu}
    Click Element    ${GlobalRoleFilterMenu}
    Sleep    3