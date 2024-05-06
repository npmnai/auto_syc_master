*** Settings ***
Library  SeleniumLibrary
Variables  ../SCE_PageLocators/SCELocatorsLogin.py
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Resource    ../Libraries/UILib.robot

*** Keywords ***
Launch SCE Application
    Open Browser    ${AppURL}    Chrome
    Maximize Browser Window
#    Sleep    2
    Wait Until Web Element Is Visible    Login    SignInEmailTextField    ${SignInEmailTextField}
#    Sleep    2
    #Click Element    xpath=//div[@id="flash"]/i
    #Sleep    5

Launch SCE Application SSO Login
    Create Webdriver    Chrome    alias=ch
    Open Browser    ${AppURL}    Chrome    alias=ch
    Maximize Browser Window
    Sleep    2
    Fill Text    Login    EmailInput    xpath=//input[@type='email']    Email
    Click Web Element   Login    Next    xpath=//span[contains(text(),'Next')]
#    Sleep    2
    Fill Text    Login    PasswordInput    xpath=//input[@type='password']    Password
    Click Web Element   Login    Next    xpath=//span[contains(text(),'Next')]
#    Sleep    2
    Wait Until Web Element Is Visible    Login    SignInEmailTextField    ${SignInEmailTextField}
#    Sleep    2
    Click Web Element    Login    Login    xpath=//div[@id="flash"]/i
    Sleep    5

Login to SCE Application
    Fill Text    Login    SignInEmailTextField    ${SignInEmailTextField}    ${Email}
#    Sleep    2
    Fill Password     Login    SignInPasswordTextField    ${SignInPasswordTextField}     ${Password}
#    Sleep    2
    #Scroll Element Into View    ${SignInButton}
    Click The Button   Login    SignInButton    ${SignInButton}
    Wait Until Web Element Is Visible    Home    SCELogo    ${SCELogo}
    Click Web Element    Home    SCELogo    ${SCELogo}
#    Sleep    2

Logout of SCE Application
    Click Web Element    Home    UserOptions    ${UserOptions}
    Sleep    5
    Click Web Link    Home    LogoutLink    ${LogoutLink}
    Sleep    5
    Wait Until Web Element Is Visible    Login    SignInButton    ${SignInButton}

Open Browser Profiled
   ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
   Call Method    ${options}    add_argument    --user-data-dir\=%LOCALAPPDATA%\\Google\\Chrome\\User Data
   Create WebDriver    Chrome    options=${options}
   Go To    ${AppURL}