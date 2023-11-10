*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***

*** Test Cases ***
Add New Application Group Role
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    ${AppGrpRoleName}=  Add New App Group Role
    Search App Group Roles    ${AppGrpRoleName}