*** Settings ***
Library    JSONLibrary
Library    OperatingSystem
Library    DateTime
Library    SeleniumLibrary
Library    String
Library    RPA.Email.ImapSmtp      smtp_server=smtp.gmail.com      smtp_port=587

Library    ../Libraries/Common.py
Library    ../Libraries/SLib.py

Resource   ../Libraries/ExcelLib.robot
Resource   ../Libraries/TestSetup.robot

Resource   ../SCE_PageKeywords/SCEKeywordsLogin.robot
Resource   ../SCE_PageKeywords/SCEKeywordsDashboard.robot
Resource   ../SCE_PageKeywords/SCEKeywordsAppGroup.robot
Resource   ../SCE_PageKeywords/SCEKeywordsAppGroupRoles.robot
Resource   ../SCE_PageKeywords/SCEKeywordsWorkflowSteps.robot
Resource   ../SCE_PageKeywords/SCEKeywordsAppFolders.robot
Resource   ../SCE_PageKeywords/SCEKeywordsStudies.robot
Resource   ../SCE_PageKeywords/SCEKeywordsUserAccess.robot
Resource   ../SCE_PageKeywords/SCEKeywordsWorkspaces.robot
Resource   ../SCE_PageKeywords/SCEKeywordsAuditLog.robot
Resource   ../SCE_PageKeywords/SCEKeywordsGlobalRoles.robot
Resource   ../SCE_PageKeywords/SCEKeywordsWorkflowModuleCheck.robot
Resource   ../SCE_PageKeywords/SCEKeywordsWorkflow.robot
Resource   ../SCE_PageKeywords/SCEKeywordsTasks.robot
Resource   ../SCE_PageKeywords/SCEKeywordsWorkspaces.robot

Variables  ../AutomationConfig.yaml
Variables  ../Resources/Waits.yaml
Variables  ../TestData/SCE_Smoke.yaml
