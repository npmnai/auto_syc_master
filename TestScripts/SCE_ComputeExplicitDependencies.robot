*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Upload Programs to Study and Create Workspace and Compute Dependencies
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create New Study
    Create Base Folders in Study
    Upload Programs to Study for Dependency Check
    Create New Workspace
    Compute Explicit Dependencies
    Logout of SCE Application
