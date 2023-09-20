*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Library    String
Library    JSONLibrary

Library    ../Libraries/Common.py

Resource   ../Libraries/ExcelLib.robot
Resource   ../Libraries/TestSetup.robot

Variables  ../AutomationConfig.yaml
