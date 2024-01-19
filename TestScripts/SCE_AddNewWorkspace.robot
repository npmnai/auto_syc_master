*** Settings ***
Resource  ../Resources/Imports.robot
Resource    ../SCE_PageKeywords/SCEKeywordsWorkspaces.robot

*** Variables ***


*** Test Cases ***
Create New Study and Upload Programs and Execute
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create New Study
    Create Base Folders in Study
    Create New Workspace
    Logout of SCE Application