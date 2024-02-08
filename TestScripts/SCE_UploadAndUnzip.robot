*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Upload zip file to study and unzip
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create New Study
    Create Base Folders in Study
    Upload and Unzip
    Logout of SCE Application