*** Settings ***
Library    Collections
Library    SeleniumLibrary
Library    ../Libraries/Common.py
Resource   ../Libraries/TestSetup.robot
Resource  ../SCE_PageKeywords/SCEKeywordsDashboard.robot
Variables  ../SCE_PageLocators/SCELocatorsWorkflowSteps.py


*** Keywords ***
Create A Step With Type Single
    Navigate to Manage Steps
    Click Web Element    Manage    AddNewWorkflowStep    ${AddNewWorkflowStep}
    Sleep   5

    @{list}=    Get Name And Desc    step_single
    Log    Step Name=${list}[0]
    Fill Text    AddWorkflowStep    StepName    ${StepName}    ${list}[0]
    Log    Step Desc=${list}[1]
    Fill Text    AddWorkflowStep    StepDescription    ${StepDescription}    ${list}[1]
    Sleep   10

    CheckTestDataFile    Sample1.csv
    @{testdatadict}=    Convert Csv To Dict    ${TEST_DATA_DIR}\\Sample1.csv
    &{d0}=    Get From List    ${testdatadict}    0
    Log Many    &{d0}

    #Click Element    ${StepTypeDropdown}
    #Sleep   2
    #Input Text    ${StepTypeTextSearch}    Double
    #Press Keys   ${StepTypeTextSearch}   ENTER
    #Sleep   10

    #Add Roles - Main Track
    ${rolestr}=    Set Variable    ${d0.MainTrack}
    @{roles}=    Split String    ${rolestr}    separator=:
    ${roles_cnt}=    Get length    ${roles}
    Log To Console     roles_cnt=${roles_cnt}

    Click Web Element    AddWorkflowStep    MainTrackDropdown    ${MainTrackDropdown}
#    Sleep   2
    Fill Text    AddWorkflowStep    StepTypeTextSearch    ${StepTypeTextSearch}    ${roles}[0]
    Press Keys   ${StepTypeTextSearch}   ENTER
    Capture Page Screenshot
    Sleep   10

    IF    ${roles_cnt} > 1
        FOR  ${index}  IN RANGE  1  ${roles_cnt}
            ${index_str}=    Convert To String    ${index}
            ${mod_xpath}=  Replace String  ${MainTrackDropdownAdd}  index  ${index_str}

            Click Web Element    AddWorkflowStep    AddAnotherRole    ${AddAnotherRole}
#            Sleep   2
            Click Web Element    AddWorkflowStep    mod_xpath    ${mod_xpath}
#            Sleep   2
            Fill Text    AddWorkflowStep    StepTypeTextSearch    ${StepTypeTextSearch}    ${roles}[${index}]
            Press Keys   ${StepTypeTextSearch}   ENTER
            Capture Page Screenshot
            Sleep   10
        END
    END

    #Add Pre Processing Modules
    ${premodstr}=    Set Variable    ${d0.PreProcessingModules}
    @{premod}=    Split String    ${premodstr}    separator=:
    ${premod_cnt}=    Get length    ${premod}
    Log To Console     premod_cnt=${premod_cnt}

    Scroll Element Into View    ${PreProcModDropdown}
    Click Web Element    AddWorkflowStep    PreProcModDropdown    ${PreProcModDropdown}
#    Sleep   2
    Fill Text    AddWorkflowStep    StepTypeTextSearch    ${StepTypeTextSearch}    ${premod}[0]
    Press Keys   ${StepTypeTextSearch}   ENTER
    Capture Page Screenshot
    Sleep   10

    #Add Post Processing Modules
    ${postmodstr}=    Set Variable    ${d0.PostProcessingModules}
    @{postmod}=    Split String    ${postmodstr}    separator=:
    ${postmod_cnt}=    Get length    ${postmod}
    Log To Console     postmod_cnt=${postmod_cnt}

    Scroll Element Into View    ${PostProcModDropdown}
    Click Web Element    AddWorkflowStep    PostProcModDropdown    ${PostProcModDropdown}
#    Sleep   2
    Fill Text    AddWorkflowStep    StepTypeTextSearch    ${StepTypeTextSearch}    ${postmod}[0]
    Press Keys   ${StepTypeTextSearch}   ENTER
    Capture Page Screenshot
    Sleep   5

    Click Web Element    AddWorkflowStep    CreateButton    ${CreateButton}
    Sleep   5
    Capture Page Screenshot



