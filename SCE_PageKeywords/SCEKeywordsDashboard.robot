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

Navigate to Manage Steps
    Click Element    ${UserOptions}
    Sleep    5
    Click Element    ${Manage}
    Sleep    5
    Element Should Be Visible    ${ManageOrgText}
    Sleep    5
    Scroll Element Into View    ${Steps}
    Sleep    5
    Click Element    ${Steps}
    Sleep    5
