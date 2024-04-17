*** Settings ***
Library  SeleniumLibrary
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Resource    ../Libraries/UILib.robot

*** Keywords ***
Promote User Session Role
    Click Web Element    Dashboard    UserOptions    ${UserOptions}
#    Sleep    5
    Click Web Link    Dashboard    Promote    ${Promote}
#    Sleep    5
    Wait Until Web Element Is Visible    Dashboard    New    ${New}
    #Click Element    ${UserOptions}
    #Element Should Be Visible    ${Demote}
    #Sleep    5
    #Click Element    ${UserOptions}

Demote User Session Role
    Click Web Element    Dashboard    UserOptions    ${UserOptions}
#    Sleep    5
    Click Web Link    Dashboard    Demote    ${Demote}
#    Sleep    5
    Wait Until Web Element Is Not Visible    Dashboard    New    ${New}
    Click Web Element    Dashboard    UserOptions    ${UserOptions}
    Wait Until Web Element Is Visible    Dashboard    Promote    ${Promote}
#    Sleep    10
    #Click Element    ${UserOptions}

Navigate to Manage
    Click Web Element    Dashboard    UserOptions    ${UserOptions}
#    Sleep    5
    Click Web Element    Dashboard    Manage    ${Manage}
#    Sleep    5
    Wait Until Web Element Is Visible    Dashboard    ManageOrgText    ${ManageOrgText}
#    Element Should Be Visible    ${ManageOrgText}
#    Sleep    5

Navigate to Manage App Groups
    Navigate to Manage
    Click Web Element    Manage    AppGroups    ${AppGroups}
#    Sleep    5

Navigate to Manage App Group Roles
    Navigate to Manage
    Click Web Element    Manage    AppGroupRoles    ${AppGroupRoles}
#    Sleep    5

Navigate to Manage Steps
    Navigate to Manage
    Scroll Element Into View    ${Steps}
    Sleep    5
    Click Web Element    Manage    Steps    ${Steps}
#    Sleep    5
