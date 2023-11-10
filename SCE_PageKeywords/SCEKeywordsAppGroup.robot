*** Settings ***
Library    SeleniumLibrary
Library    String
Library    ../Libraries/Common.py
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsAppGroup.py
Resource   ../SCE_PageKeywords/SCEKeywordsDashboard.robot

*** Keywords ***
Add New App Group
    Navigate to Manage App Groups
    Click Element    ${AddNewAppGrp}
    Sleep   5

    @{list}=    Get Name And Desc    app_grp
    Log To Console    App Group Name=${list}[0]
    Log    App Group Name=${list}[0]
    Input Text    ${AppGrpName}    ${list}[0]
    Log    App Group Desc=${list}[1]
    Input Text    ${AppGrpDesc}    ${list}[1]
    Sleep   2

    Input Text    ${UsersSearch}    internalqa
    Sleep   2
    Click Element    ${MoveAllRightButton}
    Sleep   5
    Click Element    ${SaveButton}
    Sleep   5
    [Return]  ${list}[0]

Search App Group
    [Arguments]  ${AppGrpName}
    #Navigate to Manage App Groups
    Input Text    ${SearchAppGrp}    ${AppGrpName}
    Sleep    5
    Capture Page Screenshot
    ${modSearchedAppGrp}=    Replace String  ${SearchedAppGrp}  index  ${AppGrpName}
    Element Should Be Visible    ${modSearchedAppGrp}
    Sleep    5