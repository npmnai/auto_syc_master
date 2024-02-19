*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***


*** Test Cases ***
Export Audit Log
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create New Study
    Upload Single File to Study
    Export Audit Log as CSV and PDF
    Logout of SCE Application