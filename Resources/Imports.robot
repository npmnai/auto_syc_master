*** Settings ***
Library    JSONLibrary
Library    OperatingSystem
Library    SeleniumLibrary
Library    String

Library    ../Libraries/Common.py

Resource   ../Libraries/ExcelLib.robot
Resource   ../Libraries/TestSetup.robot

Resource   ../SCE_PageKeywords/SCEKeywordsLogin.robot
Resource   ../SCE_PageKeywords/SCEKeywordsDashboard.robot
Resource   ../SCE_PageKeywords/SCEKeywordsAppGroup.robot
Resource   ../SCE_PageKeywords/SCEKeywordsAppGroupRoles.robot
Resource   ../SCE_PageKeywords/SCEKeywordsWorkflowSteps.robot

Variables  ../AutomationConfig.yaml
