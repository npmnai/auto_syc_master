*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***

*** Test Cases ***
Add New Application Group
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    ${AppGrpName}=  Add New App Group
    Search App Group    ${AppGrpName}