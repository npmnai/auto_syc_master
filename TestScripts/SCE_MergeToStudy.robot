*** Settings ***
Resource  ../Resources/Imports.robot
Resource    ../SCE_PageKeywords/SCEKeywordsWorkspaces.robot

*** Variables ***


*** Test Cases ***
Create Workspace and Make Changes and Merge to Study
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create New Study
    Create New Workspace
    Make Change to Workspace and Merge to Study
    Logout of SCE Application
