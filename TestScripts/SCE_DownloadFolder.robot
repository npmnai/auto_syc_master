*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Download Folder from Workspace and Confirm
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create New Study
    Create Base Folders in Study
#    Upload Programs to Study for Dependency Check
    Download Folder and Check
    Logout of SCE Application