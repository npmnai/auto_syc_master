*** Settings ***
Library  SeleniumLibrary
Library    ../Libraries/Common.py
Library    String
Variables  ../TestData/InputData.yaml
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsNewStudy.py
Variables  ../SCE_PageLocators/SCELocatorsStudies.py
Variables  ../SCE_PageLocators/SCELocatorsUserAccess.py
Variables  ../SCE_PageLocators/SCELocatorsAppFolders.py
Variables  ../SCE_PageLocators/SCE_LocatorsDownloads.py
Variables  ../SCE_PageLocators/SCELocatorsGlobalRoles.py
Variables  ../SCE_PageLocators/SCELocatorsWorkflowModuleCheck.py
Variables  ../SCE_PageLocators/SCELocatorsWorkflow.py
Variables  ../SCE_PageLocators/SCELocatorsTasks.py
Resource    ../Libraries/UILib.robot

*** Keywords ***
Create New Task
    Wait Until Web Element Is Visible    Study    TasksButton    ${TasksButton}
    Click Web Element    Study    TasksButton    ${TasksButton}
    Wait Until Web Element Is Visible    Tasks    New    ${New}
    Click Web Element    Tasks    New     ${New}
    Wait Until Web Element Is Visible    Tasks    NewTask     ${NewTask}
    Click Web Element    Tasks    NewTask     ${NewTask}
    @{list} =    Get Name And Desc      task
    ${TaskName} =  Set Variable    ${list}[0]
    Wait Until Web Element Is Visible    Tasks    TaskNameInput     ${TaskNameInput}
    Click Web Element    Tasks    TaskNameInput     ${TaskNameInput}
    Fill Text    Tasks    TaskNameInput     ${TaskNameInput}    ${TaskName}
    Wait Until Web Element Is Visible    Tasks    WorkflowSelect     ${WorkflowSelect}
    Click Web Element    Tasks    WorkflowSelect     ${WorkflowSelect}
    Wait Until Web Element Is Visible    Tasks    TasksSelectSearchTextInput     ${TasksSelectSearchTextInput}
    Click Web Element    Tasks    TasksSelectSearchTextInput     ${TasksSelectSearchTextInput}
    Fill Text    Tasks    TasksSelectSearchTextInput     ${TasksSelectSearchTextInput}    ${WorkflowNameArg}\n
    Wait Until Web Element Is Visible    Tasks    CreateButton     ${CreateButton}
    Click Web Element    Tasks    CreateButton     ${CreateButton}
    Wait Until Web Element Is Visible    Tasks    TaskCreatedPrompt     ${TaskCreatedPrompt}

Assign Programs To Task
    Wait Until Web Element Is Visible    Tasks    ListedTask     ${ListedTask}
    Click Web Element    Tasks    ListedTask     ${ListedTask}
    Wait Until Web Element Is Visible    Tasks    ProgsPage     ${ProgsPage}
    Click Web Element    Tasks    ProgsPage     ${ProgsPage}
    Wait Until Web Element Is Visible    Tasks    ProgPathInput     ${ProgPathInput}
    Click Web Element    Tasks    ProgPathInput     ${ProgPathInput}
    Fill Text    Tasks    ProgPathInput     ${ProgPathInput}    file
    Press Keys    None    ARROW_DOWN
    Sleep    2
    Press Keys    None    ENTER
    Wait Until Web Element Is Visible    Tasks    OutputPathInput     ${OutputPathInput}
    Click Web Element    Tasks    OutputPathInput     ${OutputPathInput}
    Fill Text    Tasks    OutputPathInput     ${OutputPathInput}    output
    Press Keys    None    ARROW_DOWN
    Sleep    2
    Press Keys    None    ENTER
    Wait Until Web Element Is Visible    Tasks    SaveButton     ${SaveButton}
    Click Web Element    Tasks    SaveButton     ${SaveButton}
    Wait Until Web Element Is Visible    Tasks    TrackUpdatedPrompt     ${TrackUpdatedPrompt}
    Wait Until Web Element Is Visible    Tasks    CloseTaskButton     ${CloseTaskButton}
    Click Web Element    Tasks    CloseTaskButton     ${CloseTaskButton}
    Wait Until Web Element Is Visible    Tasks    ListedTask     ${ListedTask}
    Click Web Element    Tasks    ListedTask     ${ListedTask}
    Wait Until Web Element Is Visible    Tasks    ProgAssignVerify     ${ProgAssignVerify}
