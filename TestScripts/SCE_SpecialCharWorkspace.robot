*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Upload Special Character Files to Study and Pull to Workspace
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create New Study
    Create Base Folders in Study
    Upload all Special Char Files
    Create New Workspace
    Make Change to Special Char File in Workspace and Merge to Study