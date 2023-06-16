*** Settings ***
Library  SeleniumLibrary
Variables  ../MDR_PageLocators/MDRLocatorsLogin.py
Variables  ../MDR_PageLocators/MDRLocatorsDashboard.py

*** Keywords ***
Launch MDR Application
    Create Webdriver    Chrome    executable_path="..\Resources\chromedriver"    alias=ch
    Open Browser    https://pharma-missouri-staging.sycamoreinformatics.com/    Chrome    alias=ch
    Maximize Browser Window
    Wait Until Element Is Visible    ${SignInEmailTextField}

Login to MDR Application
    Input Text    ${SignInEmailTextField}    internalqa1+ds1@sycamoreinformatics.com
    Input Password     ${SignInPasswordTextField}     Password@7
    Scroll Element Into View    ${SignInButton}
    Click Button   ${SignInButton}
    Wait Until Element Is Visible    ${MDRLogo}    10
