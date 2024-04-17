*** Settings ***
Library    SeleniumLibrary
Library    String
Library    ../Libraries/Common.py
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsAppGroupRoles.py
Resource   ../SCE_PageKeywords/SCEKeywordsDashboard.robot
Resource    ../Libraries/UILib.robot

*** Keywords ***
Add New App Group Role
    Navigate to Manage App Group Roles
    Click Web Element    AppGroupRoles    AddNewAppGrpRole    ${AddNewAppGrpRole}
#    Sleep   5

    @{list}=    Get Name And Desc    app_grp_role
    Log To Console    App Group Name=${list}[0]
    Log    App Group Name=${list}[0]
    Fill Text    AppGroupRoles    AppGrpRoleName    ${AppGrpRoleName}    ${list}[0]
    Log    App Group Desc=${list}[1]
    Fill Text    AppGroupRoles    AppGrpRoleDesc    ${AppGrpRoleDesc}    ${list}[1]
#    Sleep   2

    Click Web Element    AppGroupRoles    GlobalRoleDropdown    ${GlobalRoleDropdown}
#    Sleep   2
    ${modGlobalRoleDropdownValues}=    Replace String  ${GlobalRoleDropdownValues}  index  AmarGlobalRole
    Click Web Element    AppGroupRoles    modGlobalRoleDropdownValues    ${modGlobalRoleDropdownValues}
    #Input Text    ${GlobalRoleDropdown}    AmarGlobalRole
    #Sleep   2
    #Press Keys    ${GlobalRoleDropdown}    ENTER
#    Sleep   2

    Fill Text    AppGroupRoles    UsersSearch    ${UsersSearch}    internalqa
#    Sleep   2
    Click Web Element    AppGroupRoles    MoveAllRightButton    ${MoveAllRightButton}
#    Sleep   5
    Click Web Element    AppGroupRoles    SaveButton    ${SaveButton}
#    Sleep   5
    [Return]  ${list}[0]

Search App Group Roles
    [Arguments]  ${AppGrpRoleName}
    #Navigate to Manage App Group Roles
    Fill Text    AppGroupRoles    SearchAppGrpRoles    ${SearchAppGrpRoles}    ${AppGrpRoleName}
#    Sleep    5
    ${modSearchedAppGrpRole}=    Replace String  ${SearchedAppGrpRole}  index  ${AppGrpRoleName}
    Wait Until Web Element Is Visible    AppGroups    modSearchedAppGrpRole    ${modSearchedAppGrpRole}
#    Sleep    5