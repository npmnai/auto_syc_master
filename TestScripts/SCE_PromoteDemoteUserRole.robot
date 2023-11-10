*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***

*** Test Cases ***
Login and logout of CDR-SCE application
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Demote User Session Role
    Logout of SCE Application