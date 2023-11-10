*** Settings ***
Resource  ../Resources/Imports.robot

*** Variables ***

*** Test Cases ***
Login and logout of CDR-SCE application
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Logout of SCE Application