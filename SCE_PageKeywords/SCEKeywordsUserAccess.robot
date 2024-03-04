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

*** Keywords ***
Assign User
    Wait Until Element Is Visible    ${AccessButton}
    Click Element    ${AccessButton}
    Wait Until Element Is Visible    ${UserSearchInput}
    Click Element    ${UserSearchInput}
    Wait Until Element Is Visible    ${UserSearchInput}
    Input Text    ${UserSearchInput}    Internal QA
    Wait Until Element Is Visible    ${FirstUserChoice}
    Click Element    ${FirstUserChoice}
    Sleep    2
    Wait Until Element Is Visible    ${UserSearchClose}
    Click Element    ${UserSearchClose}
    Wait Until Element Is Visible    ${RoleSelect}
    Click Element    ${RoleSelect}
    Sleep    2
    Wait Until Element Is Visible    ${RoleInput}
    Input Text    ${RoleInput}    test\n
    Sleep    2
    Wait Until Element Is Visible    ${AssignButton}
    Click Element    ${AssignButton}
    Sleep    2
    Wait Until Element Is Visible    ${AssignYes}
    Click Element    ${AssignYes}
    Wait Until Element Is Visible    ${AssignmentConfirm}
    Sleep    2

Change User Role
    Wait Until Element Is Visible    ${AccessButton}
    Click Element    ${AccessButton}
    Sleep    3
    Wait Until Element Is Visible    ${CurrentUserRoleSelect}
    Click Element    ${CurrentUserRoleSelect}
    Sleep    2
    Click Element    ${CurrentUserRoleSelect}
    Sleep    2
    Wait Until Element Is Visible    ${CurrentUserRoleInput}
    Input Text    ${CurrentUserRoleInput}    ${GlobalRoleNameArg}\n
    Sleep    3
    Wait Until Element Is Visible    ${UpdateRoleButton}
    Click Element    ${UpdateRoleButton}
    Sleep    3
    Wait Until Element Is Visible    ${YesButton}
    Click Element    ${YesButton}
    Sleep    3
    ${modRoleUpdatedVerify}=    Replace String  ${RoleUpdatedVerify}  xyz  ${GlobalRoleNameArg}
    Wait Until Element Is Visible    ${modRoleUpdatedVerify}       timeout=30
