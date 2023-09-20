*** Settings ***
Library  SeleniumLibrary

Resource   ../Libraries/TestSetup.robot
Resource  ../SCE_PageKeywords/SCEKeywordsLogin.robot
Resource  ../SCE_PageKeywords/SCEKeywordsDashboard.robot
Resource  ../SCE_PageKeywords/SCEKeywordsSteps.robot

*** Variables ***

*** Test Cases ***
Add New Workflow Step Single
    InitializeTestCase
    Launch SCE Application
    Login to SCE Application
    Promote User Session Role
    Create A Step With Type Single