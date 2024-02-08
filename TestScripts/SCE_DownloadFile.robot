*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Download File from Workspace and Confirm
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create New Study
    Create Base Folders in Study
#    Upload Programs to Study for Dependency Check
    Create New Workspace
    Download File and Check
    Logout of SCE Application