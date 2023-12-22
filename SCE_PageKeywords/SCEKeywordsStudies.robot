*** Settings ***
Library  SeleniumLibrary
Library    ../Libraries/Common.py
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsNewStudy.py
Variables  ../SCE_PageLocators/SCELocatorsStudies.py
Variables  ../SCE_PageLocators/SCELocatorsUserAccess.py

*** Keywords ***
Create New Study Template
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewStudy}
    Click Element    ${NewStudy}
    @{list} =    Get Name And Desc      template
    ${StudyData} =  Set Variable    ${list}[0]
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
    Input Text    ${StudyNumber}    ${StudyData}_STUDY
    Wait Until Element Is Visible    ${StudyName}
    Input Text    ${StudyName}    ${StudyData}_STUDY
    Wait Until Element Is Visible    ${StudyTitle}
    Input Text    ${StudyTitle}    ${StudyData}_STUDY
    Wait Until Element Is Visible    ${CreateStudy}
    Click Element    ${CreateStudy}
    Sleep    2
    Wait Until Element Is Visible    ${StudyRequest}

Create New Study
    Wait Until Element Is Visible    ${SCELogo}
    Click Element    ${SCELogo}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewStudy}
    Click Element    ${NewStudy}
    @{list} =    Get Name And Desc      study
    ${StudyData} =  Set Variable    ${list}[0]
    Wait Until Element Is Visible    ${StudyNumber}
    Input Text    ${StudyNumber}    ${StudyData}
    Sleep    2
    Wait Until Element Is Visible    ${StudyName}
    Input Text    ${StudyName}    ${StudyData}
    Wait Until Element Is Visible    ${StudyTitle}
    Input Text    ${StudyTitle}    ${StudyData}
    Wait Until Element Is Visible    ${StorageButton}
    Click Element    ${StorageButton}
    Wait Until Element Is Visible    ${StudySearch}
    Input Text    ${StudySearch}   Data Server Storage\n
    Sleep    2
    Wait Until Element Is Visible    ${CreateStudy}
    Click Element    ${CreateStudy}
    Sleep    2
    Wait Until Element Is Visible    ${StudyConfirmed}

Assign User
    Wait Until Element Is Visible    ${AccessButton}
    Click Element    ${AccessButton}
    Wait Until Element Is Visible    ${UserSearchInput}
    Click Element    ${UserSearchInput}
    Wait Until Element Is Visible    ${UserSearchInput}
    Input Text    ${UserSearchInput}    Internal QA
    Wait Until Element Is Visible    ${FirstUserChoice}
    Click Element    ${FirstUserChoice}
    Sleep    2
    Wait Until Element Is Visible    ${UserSearchClose}
    Click Element    ${UserSearchClose}
    Wait Until Element Is Visible    ${RoleSelect}
    Click Element    ${RoleSelect}
    Sleep    2
    Wait Until Element Is Visible    ${RoleInput}
    Input Text    ${RoleInput}    test\n
    Sleep    2
    Wait Until Element Is Visible    ${AssignButton}
    Click Element    ${AssignButton}
    Sleep    2
    Wait Until Element Is Visible    ${AssignYes}
    Click Element    ${AssignYes}
    Wait Until Element Is Visible    ${AssignmentConfirm}
    Sleep    2
