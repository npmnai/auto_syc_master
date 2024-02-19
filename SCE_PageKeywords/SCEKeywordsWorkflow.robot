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

*** Keywords ***
Create New Workflow
    Wait Until Element Is Visible    ${OpenWorkflows}
    Click Element    ${OpenWorkflows}
    Sleep    3
    Wait Until Element Is Visible    ${AddNewWorkflow}
    Click Element    ${AddNewWorkflow}
    Sleep    3
    @{list} =    Get Name And Desc      workflow
    ${WorkflowName} =  Set Variable    ${list}[0]
    Wait Until Element Is Visible    ${InputWorkflowName}
    Input Text    ${InputWorkflowName}    ${WorkflowName}
    Sleep    3
    Wait Until Element Is Visible    ${InputWorkflowDescription}
    Input Text    ${InputWorkflowDescription}    ${WorkflowName}
    Sleep    3
    Wait Until Element Is Visible    ${AddAnotherStep}
    Click Element    ${AddAnotherStep}
    Sleep    10
    Wait Until Element Is Visible    ${SelectStep}
    Click Element    ${SelectStep}
    Sleep    3
    Wait Until Element Is Visible    ${InputStepName}
    Click Element    ${InputStepName}
    Sleep    2
    Input Text    ${InputStepName}    ${StepNameArg}\n
    Sleep    3
    Wait Until Element Is Visible    ${CreateButton}
    Click Element    ${CreateButton}
    Wait Until Element Is Visible    ${WorkflowCreatedPrompt}     timeout=30
    Sleep    10
    ${modNewWorkflowCell}=    Replace String  ${NewWorkflowCell}  xyz  ${WorkflowName}
    Scroll Element Into View    ${modNewWorkflowCell}
    Sleep    3
