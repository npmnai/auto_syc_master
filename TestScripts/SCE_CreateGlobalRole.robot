*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Create Global Role
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Navigate to Manage
    Create New Global Role
    Logout of SCE Application