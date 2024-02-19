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

*** Keywords ***
Create New Task
    Wait Until Element Is Visible    ${TasksButton}
    Click Element    ${TasksButton}
    Sleep    3
    Wait Until Element Is Visible    ${New}
    Click Element    ${New}
    Sleep    3
    Wait Until Element Is Visible    ${NewTask}
    Click Element    ${NewTask}
    Sleep    3
    @{list} =    Get Name And Desc      task
    ${TaskName} =  Set Variable    ${list}[0]
    Wait Until Element Is Visible    ${TaskNameInput}
    Click Element    ${TaskNameInput}
    Sleep    1
    Input Text    ${TaskNameInput}    ${TaskName}
    Sleep    3
    Wait Until Element Is Visible    ${WorkflowSelect}
    Click Element    ${WorkflowSelect}
    Sleep    3
    Wait Until Element Is Visible    ${TasksSelectSearchTextInput}
    Click Element    ${TasksSelectSearchTextInput}
    Sleep    1
    Input Text    ${TasksSelectSearchTextInput}    ${WorkflowNameArg}\n
    Sleep    3
    Wait Until Element Is Visible    ${CreateButton}
    Click Element    ${CreateButton}
    Wait Until Element Is Visible    ${TaskCreatedPrompt}       timeout=30

Assign Programs To Task
    Wait Until Element Is Visible    ${ListedTask}
    Click Element    ${ListedTask}
    Sleep    3
    Wait Until Element Is Visible    ${ProgsPage}
    Click Element    ${ProgsPage}
    Sleep    3
    Wait Until Element Is Visible    ${ProgPathInput}
    Click Element    ${ProgPathInput}
    Sleep    1
    Input Text    ${ProgPathInput}    file
    Sleep    3
    Press Keys    None    ARROW_DOWN
    Sleep    2
    Press Keys    None    ENTER
    Sleep    3
    Wait Until Element Is Visible    ${OutputPathInput}
    Click Element    ${OutputPathInput}
    Sleep    1
    Input Text    ${OutputPathInput}    output
    Sleep    3
    Press Keys    None    ARROW_DOWN
    Sleep    2
    Press Keys    None    ENTER
    Sleep    3
    Wait Until Element Is Visible    ${SaveButton}
    Click Element    ${SaveButton}
    Wait Until Element Is Visible    ${TrackUpdatedPrompt}      timeout=30
    Wait Until Element Is Visible    ${CloseTaskButton}
    Click Element    ${CloseTaskButton}
    Sleep    3
    Wait Until Element Is Visible    ${ListedTask}
    Click Element    ${ListedTask}
    Sleep    3
    Wait Until Element Is Visible    ${ProgAssignVerify}    timeout=30
