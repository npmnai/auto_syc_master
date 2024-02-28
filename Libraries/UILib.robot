*** Settings ***
Library  SeleniumLibrary
Variables  ../Resources/Waits.yaml

*** Variables ***

*** Keywords ***
Open Browser And Maximize
    Open Browser    ${AppURL}    Chrome
    Maximize Browser Window
    Sleep    ${timeS}
    
Wait Until Web Element Is Visible
    [Arguments]  ${page}  ${element}  ${locator}  ${stime}=${timeS}
    Log Many    Page=${page}  Element=${element}
    Sleep    ${stime}
    Wait Until Element Is Visible    ${locator}    30
    
Fill Text
    [Arguments]  ${page}  ${element}  ${locator}  ${text}  ${stime}=${timeS}
    Log Many    Page=${page}  Element=${element}
    Input Text    ${locator}    ${text}
    Sleep    ${stime}

Fill Password
    [Arguments]  ${page}  ${element}  ${locator}  ${text}  ${stime}=${timeS}
    Log Many    Page=${page}  Element=${element}
    Input Password    ${locator}    ${text}
    Sleep    ${stime}

Click The Button
    [Arguments]  ${page}  ${element}  ${locator}  ${stime}=${timeM}
    Log Many    Page=${page}  Element=${element}
    Click Button   ${locator}
    Sleep    ${stime}
    
Click Web Element
    [Arguments]  ${page}  ${element}  ${locator}  ${stime}=${timeM}
    Log Many    Page=${page}  Element=${element}
    Click Element    ${locator}
    Sleep    ${stime}
    
Click Web Link
    [Arguments]  ${page}  ${element}  ${locator}  ${stime}=${timeM}
    Log Many    Page=${page}  Element=${element}
    Click Link    ${locator}
    Sleep    ${stime}    
    
