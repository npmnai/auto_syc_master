*** Settings ***
Library    SeleniumLibrary
Library    String
Library    ../Libraries/Common.py
Variables  ../SCE_PageLocators/SCELocatorsDashboard.py
Variables  ../SCE_PageLocators/SCELocatorsAppGroupRoles.py
Resource   ../SCE_PageKeywords/SCEKeywordsDashboard.robot

*** Keywords ***
Add New App Group Role
    Navigate to Manage App Group Roles
    Click Element    ${AddNewAppGrpRole}
    Sleep   5

    @{list}=    Get Name And Desc    app_grp_role
    Log To Console    App Group Name=${list}[0]
    Log    App Group Name=${list}[0]
    Input Text    ${AppGrpRoleName}    ${list}[0]
    Log    App Group Desc=${list}[1]
    Input Text    ${AppGrpRoleDesc}    ${list}[1]
    Sleep   2

    Click Element    ${GlobalRoleDropdown}
    Sleep   2
    ${modGlobalRoleDropdownValues}=    Replace String  ${GlobalRoleDropdownValues}  index  AmarGlobalRole
    Click Element    ${modGlobalRoleDropdownValues}
    #Input Text    ${GlobalRoleDropdown}    AmarGlobalRole
    #Sleep   2
    #Press Keys    ${GlobalRoleDropdown}    ENTER
    Sleep   2

    Input Text    ${UsersSearch}    internalqa
    Sleep   2
    Click Element    ${MoveAllRightButton}
    Sleep   5
    Click Element    ${SaveButton}
    Sleep   5
    [Return]  ${list}[0]

Search App Group Roles
    [Arguments]  ${AppGrpRoleName}
    #Navigate to Manage App Group Roles
    Input Text    ${SearchAppGrpRoles}    ${AppGrpRoleName}
    Sleep    5
    ${modSearchedAppGrpRole}=    Replace String  ${SearchedAppGrpRole}  index  ${AppGrpRoleName}
    Element Should Be Visible    ${modSearchedAppGrpRole}
    Sleep    5