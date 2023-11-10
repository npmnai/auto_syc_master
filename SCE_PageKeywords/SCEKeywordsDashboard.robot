*** Settings ***
Library  SeleniumLibrary
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py

*** Keywords ***
Promote User Session Role
    Click Element    ${UserOptions}
    Sleep    5
    Click Link    ${Promote}
    Sleep    5
    Element Should Be Visible    ${New}
    #Click Element    ${UserOptions}
    #Element Should Be Visible    ${Demote}
    #Sleep    5
    #Click Element    ${UserOptions}

Demote User Session Role
    Click Element    ${UserOptions}
    Sleep    5
    Click Link    ${Demote}
    Sleep    5
    Element Should Not Be Visible    ${New}
    Click Element    ${UserOptions}
    Element Should Be Visible    ${Promote}
    Sleep    10
    #Click Element    ${UserOptions}

Navigate to Manage
    Click Element    ${UserOptions}
    Sleep    5
    Click Element    ${Manage}
    Sleep    5
    Element Should Be Visible    ${ManageOrgText}
    Sleep    5

Navigate to Manage App Groups
    Navigate to Manage
    Click Element    ${AppGroups}
    Sleep    5

Navigate to Manage App Group Roles
    Navigate to Manage
    Click Element    ${AppGroupRoles}
    Sleep    5

Navigate to Manage Steps
    Navigate to Manage
    Scroll Element Into View    ${Steps}
    Sleep    5
    Click Element    ${Steps}
    Sleep    5
