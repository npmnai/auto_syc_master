*** Settings ***
Library    JSONLibrary
Library    OperatingSystem
Library    DateTime
Library    SeleniumLibrary
Library    String
Library     RPA.Email.ImapSmtp      smtp_server=smtp.gmail.com      smtp_port=587

Library    ../Libraries/Common.py

Resource   ../Libraries/ExcelLib.robot
Resource   ../Libraries/TestSetup.robot

Resource   ../SCE_PageKeywords/SCEKeywordsLogin.robot
Resource   ../SCE_PageKeywords/SCEKeywordsDashboard.robot
Resource   ../SCE_PageKeywords/SCEKeywordsAppGroup.robot
Resource   ../SCE_PageKeywords/SCEKeywordsAppGroupRoles.robot
Resource   ../SCE_PageKeywords/SCEKeywordsWorkflowSteps.robot
Resource   ../SCE_PageKeywords/SCEKeywordsAppFolders.robot
Resource   ../SCE_PageKeywords/SCEKeywordsStudies.robot

Variables  ../AutomationConfig.yaml
