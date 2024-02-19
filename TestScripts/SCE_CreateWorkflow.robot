*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Create Workflow
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Navigate to Manage
    Create New Workflow