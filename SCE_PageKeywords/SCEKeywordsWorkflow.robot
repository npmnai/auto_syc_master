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
Resource    ../Libraries/UILib.robot

*** Keywords ***
Create New Workflow
    Wait Until Web Element Is Visible    Study    OpenWorkflows    ${OpenWorkflows}
    Click Web Element    Study    OpenWorkflows    ${OpenWorkflows}
    Wait Until Web Element Is Visible    Workflows    AddNewWorkflow    ${AddNewWorkflow}
    Click Web Element    Workflows    AddNewWorkflow    ${AddNewWorkflow}
    @{list} =    Get Name And Desc      workflow
    ${WorkflowName} =  Set Variable    ${list}[0]
    Wait Until Web Element Is Visible    Workflows    InputWorkflowName    ${InputWorkflowName}
    Fill Text    Workflows    InputWorkflowName    ${InputWorkflowName}    ${WorkflowName}
    Wait Until Web Element Is Visible    Workflows    InputWorkflowDescription    ${InputWorkflowDescription}
    Fill Text    Workflows    InputWorkflowDescription    ${InputWorkflowDescription}    ${WorkflowName}
    Wait Until Web Element Is Visible    Workflows    AddAnotherStep    ${AddAnotherStep}
    Click Web Element    Workflows    AddAnotherStep    ${AddAnotherStep}
    Sleep    10
    Wait Until Web Element Is Visible    Workflows    SelectStep    ${SelectStep}
    Click Web Element    Workflows    SelectStep    ${SelectStep}
    Wait Until Web Element Is Visible    Workflows    InputStepName    ${InputStepName}
    Click Web Element    Workflows    InputStepName    ${InputStepName}
    Fill Text    Workflows    InputStepName    ${InputStepName}    ${StepNameArg}\n
    Wait Until Web Element Is Visible    Workflows    CreateButton    ${CreateButton}
    Click Web Element    Workflows    CreateButton    ${CreateButton}
    Wait Until Web Element Is Visible    Workflows    WorkflowCreatedPrompt    ${WorkflowCreatedPrompt}
    Sleep    10
    ${modNewWorkflowCell}=    Replace String  ${NewWorkflowCell}  xyz  ${WorkflowName}
    Scroll Element Into View    ${modNewWorkflowCell}
    Sleep    3
