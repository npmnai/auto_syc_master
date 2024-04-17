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
Resource    ../Libraries/UILib.robot

*** Keywords ***

Create New Workspace
    Wait Until Web Element Is Visible    Study    RootFolders    ${RootFolders}
    Click Web Element    Study    RootFolders    ${RootFolders}
    Wait Until Web Element Is Visible    Study    Workspaces    ${Workspaces}
    Click Web Element    Study    Workspaces    ${Workspaces}
    Wait Until Web Element Is Visible    Study    NewWorkspace    ${NewWorkspace}
    Click Web Element    Study    NewWorkspace    ${NewWorkspace}
    Wait Until Web Element Is Visible    CreateWorkspace    WorkspaceNameInput    ${WorkspaceNameInput}
    Fill Text    CreateWorkspace    WorkspaceNameInput    ${WorkspaceNameInput}    -wks1
    Wait Until Web Element Is Visible    CreateWorkspace    CreateWorkspace    ${CreateWorkspace}
    Click Web Element    CreateWorkspace    CreateWorkspace    ${CreateWorkspace}
    Wait Until Web Element Is Visible    Workspace    WorkspaceConfirmation    ${WorkspaceConfirmation}
    Wait Until Web Element Is Not Visible    Workspace    WorkspaceConfirmation    ${WorkspaceConfirmation}
    Wait Until Web Element Is Visible    Workspace    RootFolders    ${RootFolders}
    Click Web Element    Workspace    RootFolders    ${RootFolders}
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
    Wait Until Web Element Is Visible    Study    Workspaces    ${Workspaces}
    Click Web Element    Study    Workspaces    ${Workspaces}
    Wait Until Web Element Is Visible    Study    WorkspaceSearch    ${WorkspaceSearch}
    Click Web Element    Study    WorkspaceSearch    ${WorkspaceSearch}
    Press Keys    None    TAB
    Sleep    2
    Press Keys    None    ENTER
    Sleep    5
    Wait Until Web Element Is Visible    Workspace    RootFolders    ${RootFolders}
    Click Web Element    Workspace    RootFolders    ${RootFolders}
    Wait Until Web Element Is Visible    Workspace    Upload    ${Upload}
    Click Web Element    Workspace    Upload    ${Upload}
    Wait Until Web Element Is Visible    Upload    UploadFile    ${UploadFile}
    Fill Text    Upload    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\raw_dm.sas7bdat      10
    Wait Until Web Element Is Visible    Workspace    Merge    ${Merge}
    Click Web Element    Workspace    Merge    ${Merge}
    Wait Until Web Element Is Visible    Workspace    SelectForMerge    ${SelectForMerge}
    Click Web Element    Workspace    SelectForMerge    ${SelectForMerge}
    Press Keys    None    ARROW_DOWN
    Sleep    2
    Press Keys    None    ENTER
#    Sleep    10
    Wait Until Web Element Is Visible    Workspace    SelectAll    ${SelectAll}
    Click Web Element    Workspace    SelectAll    ${SelectAll}
    Wait Until Web Element Is Visible    Workspace    MergeConfirm    ${MergeConfirm}
    Click Web Element    Workspace    MergeConfirm    ${MergeConfirm}
    Wait Until Web Element Is Visible    Workspace    MergeSuccess    ${MergeSuccess}
    Wait Until Web Element Is Visible    Workspace    CloseButton    ${CloseButton}
    Click Web Element    Workspace    CloseButton    ${CloseButton}
    Wait Until Web Element Is Visible    Workspace    Workspaces    ${Workspaces}
    Click Web Element    Workspace    Workspaces    ${Workspaces}
    Press Keys    None    TAB
    Sleep    2
    Press Keys    None    ENTER
    Sleep    5
    Wait Until Web Element Is Visible    Study    sas7bdat    ${sas7bdat}

Make Change to Study and Pull to Workspace
    Wait Until Web Element Is Visible    Study    Upload    ${Upload}
    Click Web Element    Study    Upload    ${Upload}
    Wait Until Web Element Is Visible    Upload    UploadFile    ${UploadFile}
    Fill Text    Upload    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\raw_dm.sas7bdat      10
    Wait Until Web Element Is Visible    Study    Workspaces    ${Workspaces}
    Click Web Element    Study    Workspaces    ${Workspaces}
    Wait Until Web Element Is Visible    Study    WorkspaceSearch    ${WorkspaceSearch}
    Click Web Element    Study    WorkspaceSearch    ${WorkspaceSearch}
    Press Keys    None    TAB
    Sleep    2
    Press Keys    None    ENTER
    Sleep    5
    Wait Until Web Element Is Visible    Workspace    Pull    ${Pull}
    Click Web Element    Workspace    Pull    ${Pull}
    Wait Until Web Element Is Visible    Workspace    SelectForMerge    ${SelectForMerge}
    Click Web Element    Workspace    SelectForMerge    ${SelectForMerge}
    Press Keys    None    ARROW_DOWN
    Sleep    2
    Press Keys    None    ENTER
#    Sleep    10
    Wait Until Web Element Is Visible    Workspace    SelectAll    ${SelectAll}
    Click Web Element    Workspace    SelectAll    ${SelectAll}
    Wait Until Web Element Is Visible    Workspace    MergeConfirm    ${MergeConfirm}
    Click Web Element    Workspace    MergeConfirm    ${MergeConfirm}
    Wait Until Web Element Is Visible    Workspace    PullSuccess    ${PullSuccess}
    Wait Until Web Element Is Visible    Workspace    CloseButton    ${CloseButton}
    Click Web Element    Workspace    CloseButton    ${CloseButton}
    Wait Until Web Element Is Visible    Study    sas7bdat    ${sas7bdat}

Compute Explicit Dependencies
    Wait Until Web Element Is Visible    Study    Workspaces    ${Workspaces}
    Click Web Element    Study    Workspaces    ${Workspaces}
    Wait Until Web Element Is Visible    Study    WorkspaceSearch    ${WorkspaceSearch}
    Click Web Element    Study    WorkspaceSearch    ${WorkspaceSearch}
    Press Keys    None    TAB
    Sleep    2
    Press Keys    None    ENTER
    Sleep    5
    Wait Until Web Element Is Visible    Workspace    RootFolders    ${RootFolders}
    Click Web Element    Workspace    RootFolders    ${RootFolders}
    Wait Until Web Element Is Visible    Workspace    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Workspace    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Workspace    SasProg    ${SasProg}
    Click Web Element    Workspace    SasProg    ${SasProg}
    Wait Until Web Element Is Visible    Workspace    DetectDependencies    ${DetectDependencies}
    Click Web Element    Workspace    DetectDependencies    ${DetectDependencies}
    Wait Until Web Element Is Visible    Workspace    DependenciesSuccess    ${DependenciesSuccess}
    Wait Until Web Element Is Visible    Workspace    DependenciesCloseButton    ${DependenciesCloseButton}
    Click Web Element    Workspace    DependenciesCloseButton    ${DependenciesCloseButton}

Compute Dependencies
    Wait Until Web Element Is Visible    Study    Workspaces    ${Workspaces}
    Click Web Element    Study    Workspaces    ${Workspaces}
    Wait Until Web Element Is Visible    Study    WorkspaceSearch    ${WorkspaceSearch}
    Click Web Element    Study    WorkspaceSearch    ${WorkspaceSearch}
    Press Keys    None    TAB
    Sleep    2
    Press Keys    None    ENTER
    Sleep    5
    Wait Until Web Element Is Visible    Workspace    RootFolders    ${RootFolders}
    Click Web Element    Workspace    RootFolders    ${RootFolders}
    Wait Until Web Element Is Visible    Workspace    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Workspace    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Workspace    SasProgAlt    ${SasProgAlt}
    Click Web Element    Workspace    SasProgAlt    ${SasProgAlt}
    Wait Until Web Element Is Visible    Workspace    DetectDependencies    ${DetectDependencies}
    Click Web Element    Workspace    DetectDependencies    ${DetectDependencies}
    Wait Until Web Element Is Visible    Workspace    DependenciesSuccess    ${DependenciesSuccess}
    Wait Until Web Element Is Visible    Workspace    DependenciesCloseButton    ${DependenciesCloseButton}
    Click Web Element    Workspace    DependenciesCloseButton    ${DependenciesCloseButton}

Download File and Check
    Wait Until Web Element Is Visible    Study    Workspaces    ${Workspaces}
    Click Web Element    Study    Workspaces    ${Workspaces}
    Wait Until Web Element Is Visible    Study    WorkspaceSearch    ${WorkspaceSearch}
    Click Web Element    Study    WorkspaceSearch    ${WorkspaceSearch}
    Press Keys    None    TAB
    Sleep    2
    Press Keys    None    ENTER
    Sleep    5
    Wait Until Web Element Is Visible    Workspace    RootFolders    ${RootFolders}
    Click Web Element    Workspace    RootFolders    ${RootFolders}
    Wait Until Web Element Is Visible    Workspace    ProgramsFolder    ${ProgramsFolder}
    Click Web Element    Workspace    ProgramsFolder    ${ProgramsFolder}
    Wait Until Web Element Is Visible    Workspace    Upload    ${Upload}
    Click Web Element    Workspace    Upload    ${Upload}
    Wait Until Web Element Is Visible    Upload    UploadFile    ${UploadFile}
    Fill Text    Upload    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\dm_sas7bdat_prog.sas     15
    Wait Until Web Element Is Visible    Workspace    SasProg    ${SasProg}
    Click Web Element    Workspace    SasProg    ${SasProg}
    Wait Until Web Element Is Visible    Workspace    DownloadInWorkspace    ${DownloadInWorkspace}
    Click Web Element    Workspace    DownloadInWorkspace    ${DownloadInWorkspace}     10
    ${file_name}=    Set Variable    C:\\Users\\siddh\\Downloads\\dm_sas7bdat_prog.sas
    Run Keyword If   ${{os.path.exists($file_name)}} is False    Fail        File does not exist

Make Change to Special Char File in Workspace and Merge to Study
    Wait Until Web Element Is Visible    Study    Workspaces    ${Workspaces}
    Click Web Element    Study    Workspaces    ${Workspaces}
    Wait Until Web Element Is Visible    Study    WorkspaceSearch    ${WorkspaceSearch}
    Click Web Element    Study    WorkspaceSearch    ${WorkspaceSearch}
    Press Keys    None    TAB
    Sleep    2
    Press Keys    None    ENTER
    Sleep    5
    Wait Until Web Element Is Visible    Workspace    RootFolders    ${RootFolders}
    Click Web Element    Workspace    RootFolders    ${RootFolders}
    Wait Until Web Element Is Visible    Workspace    DataFolder    ${DataFolder}
    Click Web Element    Workspace    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Workspace    SpecialCharFileVerify    ${SpecialCharFileVerify}
    Wait Until Web Element Is Visible    Workspace    NewSpecialCharFileVerify    ${NewSpecialCharFileVerify}
    Wait Until Web Element Is Visible    Workspace    Upload    ${Upload}
    Click Web Element    Workspace    Upload    ${Upload}
    Wait Until Web Element Is Visible    Upload    UploadFile    ${UploadFile}
    Fill Text    Upload    UploadFile    ${UploadFile}    ${TEST_DATA_DIR}\\test2Test~ @ # $ % ^ + = { } [ ] ; ,.txt     10
    Wait Until Web Element Is Visible    Workspace    NewSpecialCharFileVerify    ${NewSpecialCharFileVerify}
#    Click Element    ${NewSpecialCharFileVerify}
#    Sleep    3
#    Wait Until Element Is Visible    ${EditButtonInWorkspaceDashboard}
#    Click Element    ${EditButtonInWorkspaceDashboard}
#    Sleep    10
#    Wait Until Element Is Visible    ${TextInput}       timeout=10
#    Input Text    ${TextInput}    test
#    Sleep    3
#    Wait Until Element Is Visible    ${SaveButtonInWorkspaceDashboard}
#    Click Element    ${SaveButtonInWorkspaceDashboard}
#    Sleep    3
#    Wait Until Element Is Visible    ${UpdateFileButton}
#    Click Element    ${UpdateFileButton}
#    Sleep    5
#    Wait Until Element Is Visible    ${DataFolder}
#    Click Element    ${DataFolder}
#    Sleep    2
    Wait Until Web Element Is Visible    Workspace    Merge    ${Merge}
    Click Web Element    Workspace    Merge    ${Merge}
    Wait Until Web Element Is Visible    Workspace    SelectForMerge    ${SelectForMerge}
    Click Web Element    Workspace    SelectForMerge    ${SelectForMerge}
    Press Keys    None    ARROW_DOWN
    Sleep    2
    Press Keys    None    ENTER
    Sleep    10
    Wait Until Web Element Is Visible    Workspace    SelectAll    ${SelectAll}
    Click Web Element    Workspace    SelectAll    ${SelectAll}
    Wait Until Web Element Is Visible    Workspace    MergeConfirm    ${MergeConfirm}
    Click Web Element    Workspace    MergeConfirm    ${MergeConfirm}
    Wait Until Web Element Is Visible    Workspace    MergeSuccess    ${MergeSuccess}
    Wait Until Web Element Is Visible    Workspace    CloseButton    ${CloseButton}
    Click Web Element    Workspace    CloseButton    ${CloseButton}
    Wait Until Web Element Is Visible    Workspace    Workspaces    ${Workspaces}
    Click Web Element    Workspace    Workspaces    ${Workspaces}
    Press Keys    None    TAB
    Sleep    2
    Press Keys    None    ENTER
    Sleep    5
    Wait Until Web Element Is Visible    Study    RootFolders    ${RootFolders}
    Click Web Element    Study    RootFolders    ${RootFolders}
    Wait Until Web Element Is Visible    Study    DataFolder    ${DataFolder}
    Click Web Element    Study    DataFolder    ${DataFolder}
    Wait Until Web Element Is Visible    Study    NewSpecialCharFileVerify    ${NewSpecialCharFileVerify}
    Click Web Element    Study    NewSpecialCharFileVerify    ${NewSpecialCharFileVerify}
    Wait Until Web Element Is Visible    Study    UpdatedFileVerify    ${UpdatedFileVerify}       timeout=30
