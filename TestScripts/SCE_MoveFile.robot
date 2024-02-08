*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Upload and Copy file from Programs to Data
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create New Study
    Create Base Folders in Study
    Move File From Programs to Results
    Logout of SCE Application