*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***

*** Test Cases ***
Add New Workflow Step Single
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create A Step With Type Single