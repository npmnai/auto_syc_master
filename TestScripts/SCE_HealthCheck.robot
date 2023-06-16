*** Settings ***
Library  SeleniumLibrary
Library    ../SCE_PageLocators/SCELocatorsLogin.py
Library    ../SCE_PageLocators/SCELocatorsDashboard.py

*** Variables ***

*** Test Cases ***
Launch Application
    Create Webdriver    Chrome    executable_path="C:\NB Automation\chromedriver"    alias=ch
    Open Browser    https://cdrsce-syracuse-staging.sycamoreinformatics.com/    Chrome    alias=ch
    Maximize Browser Window
    ${varXpathLoginEmail}    SCELocatorsLogin.Get Xpath Text Login Email
    ${varXpathLoginPassword}    SCELocatorsLogin.Get Xpath Text Login Password
    ${varXpathSignIn}    SCELocatorsLogin.Get Xpath Button Sign In
    Input Text    ${varXpathLoginEmail}    internalqa@sycamoreinformatics.com
    Input Password     ${varXpathLoginPassword}     Password@4
    Sleep    2
    Click Button   ${varXpathSignIn}
    Sleep    5
    ${varXpathLogo}    SCELocatorsLogin.Get Xpath Product Logo
    Element Should Be Visible    ${varXpathLogo}

PromoteUserSessionRole
    Sleep    5
    Set Focus To Element    xpath=//a[@class='product-logo product-logo--small product-logo--sce']
    Click Link    xpath=//a[@class='product-logo product-logo--small product-logo--sce']
    Sleep    10
    Set Focus To Element    xpath=//a[@class='dropdown-toggle']/i[@class='fa fa-user']
    Click Element    xpath=//a[@class='dropdown-toggle']/i[@class='fa fa-user']
    Sleep    10
    Set Focus To Element    xpath=//a[@title='Promote Session User Role']
    Click Link    xpath=//a[@title='Promote Session User Role']
    Sleep    10
    Element Should Be Visible    xpath=//*[@class='fa fa-caret-down']

Navigate to Manage
    Click Link    xpath=//a[@class='product-logo product-logo--small product-logo--sce']
    Sleep    5
    Click Element    xpath=//a[@class='dropdown-toggle']/i[@class='fa fa-user']
    Sleep    5
    Set Focus To Element    xpath=//a[@title='Manage']
    Click Element    xpath=//a[@title='Manage']
    Sleep    5
    Element Should Be Visible    xpath=//h2[text()='Manage Organization']
    Sleep    5
    Set Focus To Element    xpath=//a[@title='Organization']

Running Agent Stats
    Sleep    5
    Scroll Element Into View    xpath=//a[@title='Running Agents Stats']
    Click Element    xpath=//a[@title='Running Agents Stats']
    Sleep    5
    Element Should Be Visible    xpath=//h2[contains(text(),'Running agents stats')]

Validate that agents are enabled
    FOR  ${index}  IN RANGE  1  8
        ${xpath_agent_type}=    Set Variable    //body/main[1]/div[1]/section[1]/ul[1]/div[1]/li[${index}]/div[1]/span[1]/a[1]
        ${text_agent_type}    Get Text   ${xpath_agent_type}

        ${xpath_agent_enabled}=    Set Variable    //body/main[1]/div[1]/section[1]/ul[1]/div[1]/li[${index}]/div[1]/span[5]
        ${text_agent_enabled}    Get Text   ${xpath_agent_enabled}

        Log To Console    ${\n}Agent Type=${text_agent_type} :: Enabled=${text_agent_enabled}
    END

*** Keywords ***
Launch & login
    Create Webdriver    Chrome    executable_path="C:\NB Automation\chromedriver"    alias=ch
    Open Browser    https://cdrsce-syracuse-staging.sycamoreinformatics.com/    Chrome    alias=ch
    Maximize Browser Window
    ${varXpathLoginEmail}    SCELocatorsLogin.getXpathTextLoginEmail
    ${varXpathLoginPassword}    SCELocatorsLogin.getXpathTextLoginPassword
    ${varXpathSignInBtn}    SCELocatorsLogin.getXpathButtonSignIn
    Input Text    ${varXpathLoginEmail}    internalqa@sycamoreinformatics.com
    Input Password     ${varXpathLoginPassword}     Password@4
    Sleep    2
    Click Button   ${varXpathSignInBtn}
    Sleep    5
    Element Should Be Visible    xpath=//span[contains(text(),'CDR - SCE')]