*** Settings ***
Library  SeleniumLibrary
Library    DateTime
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsAppFolders.py
Variables  ../SCE_PageLocators/SCELocatorsNewStudy.py
Variables  ../SCE_PageLocators/SCELocatorsStudies.py

*** Keywords ***
Create New Study Template
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewStudy}
    Click Element    ${NewStudy}
    ${Timestamp} =  Get Current Date    result_format=%d%m%y%H%M
    ${StudyData} =  Set Variable    autotest_${Timestamp}
    Set Suite Variable    ${StudyData}
    Wait Until Element Is Visible    ${StudyNumber}
    Input Text    ${StudyNumber}    ${StudyData}
    Wait Until Element Is Visible    ${StudyName}
    Input Text    ${StudyName}    ${StudyData}
    Wait Until Element Is Visible    ${StudyTitle}
    Input Text    ${StudyTitle}    ${StudyData}
    Wait Until Element Is Visible    ${IsTemplate}
    Click Element    ${IsTemplate}
    Wait Until Element Is Visible    ${StorageButton}
    Click Element    ${StorageButton}
    Wait Until Element Is Visible    ${StudySearch}
    Input Text    ${StudySearch}   Data Server Storage\n
    Sleep    2
    Wait Until Element Is Visible    ${CreateStudy}
    Click Element    ${CreateStudy}
    Sleep    2
    Wait Until Element Is Visible    ${StudyConfirmed}
#    [Return]    ${StudyData}

Create New Study From Template
    Wait Until Element Is Visible    ${SCELogo}
    Click Element    ${SCELogo}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewStudy}
    Click Element    ${NewStudy}
    Wait Until Element Is Visible    ${TemplateButton}
    Click Element    ${TemplateButton}
    Wait Until Element Is Visible    ${StudySearch}
    Input Text    ${StudySearch}    ${StudyData}\n
    Wait Until Element Is Visible    ${StudyNumber}
    Input Text    ${StudyNumber}    ${StudyData}_study
    Wait Until Element Is Visible    ${StudyName}
    Input Text    ${StudyName}    ${StudyData}_study
    Wait Until Element Is Visible    ${StudyTitle}
    Input Text    ${StudyTitle}    ${StudyData}_study
    Wait Until Element Is Visible    ${CreateStudy}
    Click Element    ${CreateStudy}
    Sleep    2
    Wait Until Element Is Visible    ${StudyRequest}