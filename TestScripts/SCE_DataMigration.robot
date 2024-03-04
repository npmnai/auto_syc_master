*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Run Data Migration Job
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
#    Create New Study
#    Create Base Folders in Study
    Run Data Migration