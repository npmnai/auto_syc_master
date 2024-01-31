*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Create Workspace and Make Changes and Pull from Study
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create New Study
    Create New Workspace
    Make Change to Study and Pull to Workspace
    Logout of SCE Application
