*** Settings ***
Library  SeleniumLibrary
Variables  ../SCE_PageLocators/SCELocatorsLogin.py
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py

*** Keywords ***
Launch SCE Application
    Create Webdriver    Chrome    alias=ch
    Open Browser    ${AppURL}    Chrome    alias=ch
    Maximize Browser Window
    Wait Until Element Is Visible    ${SignInEmailTextField}

Login to SCE Application
    Input Text    ${SignInEmailTextField}    ${Email}
    Input Password     ${SignInPasswordTextField}     ${Password}
    #Scroll Element Into View    ${SignInButton}
    Click Button   ${SignInButton}
    Wait Until Element Is Visible    ${SCELogo}    10
    Click Element    ${SCELogo}
    Sleep    10
