*** Settings ***
Library    SeleniumLibrary
Library    String
Library    ../Libraries/Common.py
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsAppGroup.py
Resource   ../SCE_PageKeywords/SCEKeywordsDashboard.robot
Resource    ../Libraries/UILib.robot

*** Keywords ***
Add New App Group
    Navigate to Manage App Groups
    Click Web Element    AppGroups    AddNewAppGrp    ${AddNewAppGrp}
#    Sleep   5

    @{list}=    Get Name And Desc    app_grp
    Log To Console    App Group Name=${list}[0]
    Log    App Group Name=${list}[0]
    Fill Text    AppGroups    AppGrpName    ${AppGrpName}    ${list}[0]
    Log    App Group Desc=${list}[1]
    Fill Text    AppGroups    AppGrpDesc    ${AppGrpDesc}    ${list}[1]
#    Sleep   2

    Fill Text    AppGroups    UsersSearch    ${UsersSearch}    internalqa
#    Sleep   2
    Click Web Element    AppGroups    MoveAllRightButton    ${MoveAllRightButton}
#    Sleep   5
    Click Web Element    AppGroups    SaveButton    ${SaveButton}
#    Sleep   5
    [Return]  ${list}[0]

Search App Group
    [Arguments]  ${AppGrpName}
    #Navigate to Manage App Groups
    Fill Text    AppGroups    SearchAppGrp    ${SearchAppGrp}    ${AppGrpName}
    Sleep    5
    Capture Page Screenshot
    ${modSearchedAppGrp}=    Replace String  ${SearchedAppGrp}  index  ${AppGrpName}
    Wait Until Web Element Is Visible    AppGroups    modSearchedAppGrp    ${modSearchedAppGrp}
#    Sleep    5