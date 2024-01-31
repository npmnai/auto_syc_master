*** Settings ***
Library  SeleniumLibrary
Library    ../Libraries/Common.py
Resource   ../Libraries/TestSetup.robot
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsNewStudy.py
Variables  ../SCE_PageLocators/SCELocatorsStudies.py
Variables  ../SCE_PageLocators/SCELocatorsUserAccess.py
Variables  ../SCE_PageLocators/SCELocatorsAppFolders.py
Variables  ../SCE_PageLocators/SCELocatorsWorkspaces.py

*** Keywords ***

Create New Workspace
    Wait Until Element Is Visible    ${RootFolders}
    Click Element    ${RootFolders}
    Sleep    2
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
    Wait Until Element Is Visible    ${RootFolders}
    Click Element    ${RootFolders}
    Sleep    3
#    Wait Until Element Is Visible    ${Workspaces}
#    Click Element    ${Workspaces}
#    Sleep    2
#    Wait Until Element Is Visible    ${WorkspaceSearch}
#    Click Element    ${WorkspaceSearch}
#    Sleep    2
#    Press Keys    None    TAB
#    Sleep    2
#    Press Keys    None    ENTER
#    Sleep    5

Make Change to Workspace and Merge to Study
    Wait Until Element Is Visible    ${Workspaces}
    Click Element    ${Workspaces}
    Sleep    2
    Wait Until Element Is Visible    ${WorkspaceSearch}
    Click Element    ${WorkspaceSearch}
    Sleep    2
    Press Keys    None    TAB
    Sleep    2
    Press Keys    None    ENTER
    Sleep    5
    Wait Until Element Is Visible    ${RootFolders}
    Click Element    ${RootFolders}
    Sleep    3
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\raw_dm.sas7bdat
    Sleep    10
    Wait Until Element Is Visible    ${Merge}
    Click Element    ${Merge}
    Sleep    2
    Wait Until Element Is Visible    ${SelectForMerge}
    Click Element    ${SelectForMerge}
    Sleep    2
    Press Keys    None    ARROW_DOWN
    Sleep    2
    Press Keys    None    ENTER
    Sleep    10
    Wait Until Element Is Visible    ${SelectAll}
    Click Element    ${SelectAll}
    Sleep    3
    Wait Until Element Is Visible    ${MergeConfirm}
    Click Element    ${MergeConfirm}
    Wait Until Element Is Visible    ${MergeSuccess}        timeout=30
    Sleep    2
    Wait Until Element Is Visible    ${CloseButton}
    Click Element    ${CloseButton}
    Sleep    5
    Wait Until Element Is Visible    ${Workspaces}
    Click Element    ${Workspaces}
    Sleep    2
    Press Keys    None    TAB
    Sleep    2
    Press Keys    None    ENTER
    Sleep    5
    Wait Until Element Is Visible    ${sas7bdat}        timeout=30

Make Change to Study and Pull to Workspace
    Wait Until Element Is Visible    ${Upload}
    Click Element    ${Upload}
    Sleep    2
    Wait Until Element Is Visible    ${UploadFile}
    Input Text    ${UploadFile}    ${TEST_DATA_DIR}\\raw_dm.sas7bdat
    Sleep    10
    Wait Until Element Is Visible    ${Workspaces}
    Click Element    ${Workspaces}
    Sleep    2
    Wait Until Element Is Visible    ${WorkspaceSearch}
    Click Element    ${WorkspaceSearch}
    Sleep    2
    Press Keys    None    TAB
    Sleep    2
    Press Keys    None    ENTER
    Sleep    5
    Wait Until Element Is Visible    ${Pull}
    Click Element    ${Pull}
    Sleep    3
    Wait Until Element Is Visible    ${SelectForMerge}
    Click Element    ${SelectForMerge}
    Sleep    2
    Press Keys    None    ARROW_DOWN
    Sleep    2
    Press Keys    None    ENTER
    Sleep    10
    Wait Until Element Is Visible    ${SelectAll}
    Click Element    ${SelectAll}
    Sleep    3
    Wait Until Element Is Visible    ${MergeConfirm}
    Click Element    ${MergeConfirm}
    Wait Until Element Is Visible    ${PullSuccess}        timeout=30
    Sleep    2
    Wait Until Element Is Visible    ${CloseButton}
    Click Element    ${CloseButton}
    Sleep    5
    Wait Until Element Is Visible    ${sas7bdat}        timeout=30

Compute Explicit Dependencies
    Wait Until Element Is Visible    ${Workspaces}
    Click Element    ${Workspaces}
    Sleep    3
    Wait Until Element Is Visible    ${WorkspaceSearch}
    Click Element    ${WorkspaceSearch}
    Sleep    3
    Press Keys    None    TAB
    Sleep    3
    Press Keys    None    ENTER
    Sleep    5
    Wait Until Element Is Visible    ${RootFolders}
    Click Element    ${RootFolders}
    Sleep    3
    Wait Until Element Is Visible    ${ProgramsFolder}
    Click Element    ${ProgramsFolder}
    Sleep    3
    Wait Until Element Is Visible    ${SasProg}
    Click Element    ${SasProg}
    Sleep    5
    Wait Until Element Is Visible    ${DetectDependencies}
    Click Element    ${DetectDependencies}
    Wait Until Element Is Visible    ${DependenciesSuccess}     timeout=30
    Sleep    3
    Wait Until Element Is Visible    ${DependenciesCloseButton}
    Click Element    ${DependenciesCloseButton}
    Sleep    3
