*** Settings ***
Library  SeleniumLibrary
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsAppFolders.py
Variables  ../SCE_PageLocators/SCELocatorsNewStudy.py
Variables  ../SCE_PageLocators/SCELocatorsStudies.py

*** Keywords ***
Create New Folder
    Wait Until Element Is Visible    ${RootFolders}
    Click Element    ${RootFolders}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewFolder}
    Click Element    ${NewFolder}
    Wait Until Element Is Visible    ${FolderNameInput}
    Input Text    ${FolderNameInput}    ${StudyData}_FOLDER
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

Create Base Folders in Study
    Wait Until Element Is Visible    ${RootFolders}
    Click Element    ${RootFolders}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewFolder}
    Click Element    ${NewFolder}
    Wait Until Element Is Visible    ${FolderNameInput}
    Input Text    ${FolderNameInput}    documents
    Wait Until Element Is Visible    ${FolderTypeButton}
    Click Element    ${FolderTypeButton}
    Wait Until Element Is Visible    ${SelectSearch}
    Input Text    ${SelectSearch}   documents\n
    Wait Until Element Is Visible    ${CreateFolder}
    Click Element    ${CreateFolder}
    Sleep    2
    Wait Until Element Is Visible    ${FolderConfirmed}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewFolder}
    Click Element    ${NewFolder}
    Wait Until Element Is Visible    ${FolderNameInput}
    Input Text    ${FolderNameInput}    data
    Wait Until Element Is Visible    ${FolderTypeButton}
    Click Element    ${FolderTypeButton}
    Wait Until Element Is Visible    ${SelectSearch}
    Input Text    ${SelectSearch}   data\n
    Wait Until Element Is Visible    ${CreateFolder}
    Click Element    ${CreateFolder}
    Sleep    2
    Wait Until Element Is Visible    ${FolderConfirmed}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewFolder}
    Click Element    ${NewFolder}
    Wait Until Element Is Visible    ${FolderNameInput}
    Input Text    ${FolderNameInput}    programs
    Wait Until Element Is Visible    ${FolderTypeButton}
    Click Element    ${FolderTypeButton}
    Wait Until Element Is Visible    ${SelectSearch}
    Input Text    ${SelectSearch}   programs\n
    Wait Until Element Is Visible    ${CreateFolder}
    Click Element    ${CreateFolder}
    Sleep    2
    Wait Until Element Is Visible    ${FolderConfirmed}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewFolder}
    Click Element    ${NewFolder}
    Wait Until Element Is Visible    ${FolderNameInput}
    Input Text    ${FolderNameInput}    results
    Wait Until Element Is Visible    ${FolderTypeButton}
    Click Element    ${FolderTypeButton}
    Wait Until Element Is Visible    ${SelectSearch}
    Input Text    ${SelectSearch}   results\n
    Wait Until Element Is Visible    ${CreateFolder}
    Click Element    ${CreateFolder}
    Sleep    2
    Wait Until Element Is Visible    ${FolderConfirmed}
    Sleep    2
    Wait Until Element Is Visible    ${ResultsFolder}
    Click Element    ${ResultsFolder}
    Sleep    2
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Wait Until Element Is Visible    ${NewFolder}
    Click Element    ${NewFolder}
    Wait Until Element Is Visible    ${FolderNameInput}
    Input Text    ${FolderNameInput}    python
    Wait Until Element Is Visible    ${FolderTypeButton}
    Click Element    ${FolderTypeButton}
    Wait Until Element Is Visible    ${SelectSearch}
    Input Text    ${SelectSearch}   results\n
    Wait Until Element Is Visible    ${CreateFolder}
    Click Element    ${CreateFolder}
    Sleep    2
    Wait Until Element Is Visible    ${FolderConfirmed}
    Sleep    5
