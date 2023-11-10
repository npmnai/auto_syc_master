*** Settings ***
Library  SeleniumLibrary
Variables  ../SCE_PageLocators/SCELocatorsLogin.py
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py

*** Keywords ***
Launch SCE Application
    Open Browser    ${AppURL}    Chrome
    Maximize Browser Window
    Sleep    2
    Wait Until Element Is Visible    ${SignInEmailTextField}
    Sleep    2
    #Click Element    xpath=//div[@id="flash"]/i
    #Sleep    5

Launch SCE Application SSO Login
    Create Webdriver    Chrome    alias=ch
    Open Browser    ${AppURL}    Chrome    alias=ch
    Maximize Browser Window
    Sleep    2
    Input Text    xpath=//input[@type='email']    Email
    Click Element   xpath=//span[contains(text(),'Next')]
    Sleep    2
    Input Text    xpath=//input[@type='password']    Password
    Click Element   xpath=//span[contains(text(),'Next')]
    Sleep    2
    Wait Until Element Is Visible    ${SignInEmailTextField}
    Sleep    2
    Click Element    xpath=//div[@id="flash"]/i
    Sleep    5

Login to SCE Application
    Input Text    ${SignInEmailTextField}    ${Email}
    Sleep    2
    Input Password     ${SignInPasswordTextField}     ${Password}
    Sleep    2
    #Scroll Element Into View    ${SignInButton}
    Click Button   ${SignInButton}
    Wait Until Element Is Visible    ${SCELogo}    10
    Click Element    ${SCELogo}
    Sleep    2

Logout of SCE Application
    Click Element    ${UserOptions}
    Sleep    5
    Click Link    ${LogoutLink}
    Sleep    5
    Wait Until Element Is Visible    ${SignInButton}    10

Open Browser Profiled
   ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
   Call Method    ${options}    add_argument    --user-data-dir\=%LOCALAPPDATA%\\Google\\Chrome\\User Data
   Create WebDriver    Chrome    options=${options}
   Go To    ${AppURL}