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
Variables  ../SCE_PageLocators/SCELocatorsWorkflow.py
Variables  ../SCE_PageLocators/SCELocatorsTasks.py
Resource    ../Libraries/UILib.robot

*** Keywords ***
Assign User
    Wait Until Web Element Is Visible    UserAccess    AccessButton    ${AccessButton}
    Click Web Element    UserAccess    AccessButton    ${AccessButton}
    Wait Until Web Element Is Visible    UserAccess    UserSearchInput    ${UserSearchInput}
    Click Web Element    UserAccess    UserSearchInput    ${UserSearchInput}
#    Wait Until Web Element Is Visible    UserAccess    UserSearchInput    ${UserSearchInput}
    Fill Text    UserAccess    UserSearchInput    ${UserSearchInput}    ${UserSearchInputArg}
    Wait Until Web Element Is Visible    UserAccess    FirstUserChoice    ${FirstUserChoice}
    Click Web Element    UserAccess    FirstUserChoice    ${FirstUserChoice}
    Wait Until Web Element Is Visible    UserAccess    UserSearchClose    ${UserSearchClose}
    Click Web Element    UserAccess    UserSearchClose    ${UserSearchClose}
    Wait Until Web Element Is Visible    UserAccess    RoleSelect    ${RoleSelect}
    Click Web Element    UserAccess    RoleSelect    ${RoleSelect}
    Wait Until Web Element Is Visible    UserAccess    RoleInput    ${RoleInput}
    Fill Text    UserAccess    RoleInput    ${RoleInput}    ${RoleInputArg}\n
    Wait Until Web Element Is Visible    UserAccess    AssignButton    ${AssignButton}
    Click Web Element    UserAccess    AssignButton    ${AssignButton}
    Wait Until Web Element Is Visible    UserAccess    AssignYes    ${AssignYes}
    Click Web Element    UserAccess    AssignYes    ${AssignYes}
    Wait Until Web Element Is Visible    UserAccess    AssignmentConfirm    ${AssignmentConfirm}

Change User Role
    Wait Until Web Element Is Visible    UserAccess    AccessButton    ${AccessButton}
    Click Web Element    UserAccess    AccessButton    ${AccessButton}
    Wait Until Web Element Is Visible    UserAccess    CurrentUserRoleSelect    ${CurrentUserRoleSelect}
    Click Web Element    UserAccess    CurrentUserRoleSelect    ${CurrentUserRoleSelect}
    Click Web Element    UserAccess    CurrentUserRoleSelect    ${CurrentUserRoleSelect}
    Wait Until Web Element Is Visible    UserAccess    CurrentUserRoleInput    ${CurrentUserRoleInput}
    Fill Text    UserAccess    CurrentUserRoleInput    ${CurrentUserRoleInput}    ${GlobalRoleNameArg}\n
    Wait Until Web Element Is Visible    UserAccess    UpdateRoleButton    ${UpdateRoleButton}
    Click Web Element    UserAccess    UpdateRoleButton    ${UpdateRoleButton}
    Wait Until Web Element Is Visible    UserAccess    YesButton    ${YesButton}
    Click Web Element    UserAccess    YesButton    ${YesButton}
    ${modRoleUpdatedVerify}=    Replace String  ${RoleUpdatedVerify}  xyz  ${GlobalRoleNameArg}
    Wait Until Web Element Is Visible    UserAccess    modRoleUpdatedVerify    ${modRoleUpdatedVerify}
