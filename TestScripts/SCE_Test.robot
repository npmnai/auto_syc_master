*** Settings ***
Library  SeleniumLibrary
Library    ../SCE_PageLocators/SCELocatorsLogin.py
Library    ../SCE_PageLocators/SCELocatorsDashboard.py
Variables    ../SCE_PageLocators/TestLocators.py

*** Variables ***

*** Test Cases ***
Launch Application
    Create Webdriver    Chrome    executable_path="C:\NB Automation\chromedriver"    alias=ch
    Open Browser    https://cdrsce-syracuse-staging.sycamoreinformatics.com/    Chrome    alias=ch
    Maximize Browser Window
    #${varXpathLoginEmail}    SCELocatorsLogin.Get Xpath Text Login Email
    ${varXpathLoginPassword}    SCELocatorsLogin.Get Xpath Text Login Password
    ${varXpathSignIn}    SCELocatorsLogin.Get Xpath Button Sign In
    Input Text    ${SignInEmailTextField2}    internalqa@sycamoreinformatics.com
    Input Password     ${varXpathLoginPassword}     Password@4
