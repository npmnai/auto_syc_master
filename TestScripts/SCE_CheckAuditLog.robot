*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Check Audit Log
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create New Study
    Upload Single File to Study
    Check Audit Log for Study and File Creation
    Logout of SCE Application
