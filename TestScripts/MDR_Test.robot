*** Settings ***
Library  SeleniumLibrary
Resource  ../MDR_PageKeywords/MDRKeywordsLogin.robot
Variables  ../MDR_PageLocators/MDRLocatorsLogin.py

*** Variables ***

*** Test Cases ***
Launch Application
    Launch MDR Application
    Login to MDR Application
    Select From List By Value  id:role_id  3
    Wait Until Element Is Visible    xpath=//button[contains(text(),'New Metadata Collection')]
    Click Element    xpath=//button[contains(text(),'New Metadata Collection')]
    Sleep    5
    Input Text    xpath=//input[@name="title"]    AUTO_LIB_0531_004
    Input Text    xpath=//input[@name="description"]    AUTO_DESC_0531_004
    Click Element    xpath=//body/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[2]
    Click Element    xpath=//div[contains(text(),'Conformance')]
    Sleep    5
    Click Element    xpath=//body/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[2]
    Click Element    xpath=//div[contains(text(),'/ABC')]
    Sleep    5
    Click Element    xpath=//body/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/div[2]
    Click Element    xpath=//div[contains(text(),'Fabrizumab')]
    Sleep    5
    Click Button    xpath=//button[contains(text(),'Create')]
    Wait Until Element Is Visible    xpath=//span[contains(text(),'more_vert')]    15
    Element Should Be Visible    xpath=//div[@class="sheets-list"]//li[@class="active"]//a[@name="forms"]
