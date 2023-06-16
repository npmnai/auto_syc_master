*** Settings ***
Library  SeleniumLibrary
Variables  ../MDR_PageLocators/MDRLocatorsDashboard.py

*** Keywords ***
Change Role To Data Steward
    Select From List By Value    ${ChangeRoleDropdown}    3
    Wait Until Element Is Visible    ${NewMCButton}

Click Button "New Metadata Collection"
    Click Element    ${NewMCButton}
    Sleep    5
