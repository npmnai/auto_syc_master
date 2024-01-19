*** Settings ***
Library  SeleniumLibrary
Library    ../Libraries/Common.py
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsNewStudy.py
Variables  ../SCE_PageLocators/SCELocatorsStudies.py
Variables  ../SCE_PageLocators/SCELocatorsUserAccess.py
Variables  ../SCE_PageLocators/SCELocatorsAppFolders.py
Variables  ../SCE_PageLocators/SCELocatorsWorkspaces.py

*** Keywords ***

Create New Workspace
    Wait Until Element Is Visible    ${Workspaces}
    Click Element    ${Workspaces}
    Sleep    3
    Wait Until Element Is Visible    ${NewWorkspace}
    Click Element    ${NewWorkspace}
    Sleep    5
    Wait Until Element Is Visible    ${WorkspaceNameInput}
    Input Text    ${WorkspaceNameInput}    -wks1
    Sleep    2
    Wait Until Element Is Visible    ${CreateWorkspace}
    Click Element    ${CreateWorkspace}
    Wait Until Element Is Visible    ${WorkspaceConfirmation}
    Wait Until Element Is Not Visible    ${WorkspaceConfirmation}       timeout=30
