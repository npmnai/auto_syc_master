*** Settings ***
Library  SeleniumLibrary
Resource  ../MDR_PageKeywords/MDRKeywordsLogin.robot
Resource  ../MDR_PageKeywords/MDRKeywordsDashboard.robot

*** Variables ***

*** Test Cases ***
Launch Application
    Launch MDR Application
    Login to MDR Application
    Change Role To Data Steward
    Click Button "New Metadata Collection"

*** Comments ***
    Input Text    xpath=//input[@name="title"]    AUTO_LIB_0531_003
    Input Text    xpath=//input[@name="description"]    AUTO_DESC_0531_003
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
