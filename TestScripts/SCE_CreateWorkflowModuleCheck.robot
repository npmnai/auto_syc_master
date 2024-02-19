*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Create Module Check
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Navigate to Manage
    Create New Module Check
#    Logout of SCE Application