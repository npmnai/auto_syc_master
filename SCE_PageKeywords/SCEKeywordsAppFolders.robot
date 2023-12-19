*** Settings ***
Library  SeleniumLibrary
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsAppFolders.py
Variables  ../SCE_PageLocators/SCELocatorsNewStudy.py
Variables  ../SCE_PageLocators/SCELocatorsStudies.py

*** Keywords ***
Create New Folder
#    [Arguments]     ${StudyData}
    Wait Until Element Is Visible    ${RootFolders}
    Click Element    ${RootFolders}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewFolder}
    Click Element    ${NewFolder}
    Wait Until Element Is Visible    ${FolderNameInput}
    Input Text    ${FolderNameInput}    ${StudyData}_folder
    Wait Until Element Is Visible    ${FolderTypeButton}
    Click Element    ${FolderTypeButton}
    Wait Until Element Is Visible    ${SelectSearch}
    Input Text    ${SelectSearch}   11thSep2023\n
    Wait Until Element Is Visible    ${PermissionTypeButton}
    Click Element    ${PermissionTypeButton}
    Wait Until Element Is Visible    ${SelectSearch}
    Input Text    ${SelectSearch}   Blinded\n
    Wait Until Element Is Visible    ${CreateFolder}
    Click Element    ${CreateFolder}
    Sleep    2
    Wait Until Element Is Visible    ${FolderConfirmed}