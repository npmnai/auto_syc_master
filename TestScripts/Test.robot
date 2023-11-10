*** Settings ***
Resource    ../Resources/Imports.robot
Library    Collections

Variables  ../SCE_PageLocators/SCELocatorsSteps.py

*** Variables ***
${json_path}    C:\\NB Automation\\auto_syc_master\\Environments\\


*** Comments ***
Testcase1
    #${index}=    Set Variable    1
    FOR  ${index}  IN RANGE  1  8
        ${xpath}=    Set Variable    //body/main[1]/div[1]/section[1]/ul[1]/div[1]/li[${index}]/div[1]/span[1]/a[1]
        Log To Console    ${\n}${xpath}
    END
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}

    ${str}=   Split String    ${EXECDIR}    auto_syc_master
    Log To Console    ${str}

    ${AUTODIR}=   Set Variable   auto_syc_master
    ${WORKDIR}=   Fetch From Left   ${EXECDIR}   ${AUTODIR}
    Set Test Variable   ${WORKDIR}  ${WORKDIR}${AUTODIR}
    Log To Console    WORKDIR = ${WORKDIR}
    ${TESTDIR}=   Set Variable   ${WORKDIR}\\TestScripts
    Log To Console    ${TESTDIR}

    ${product}=    Set Variable    SCE
    ${env}=    Set Variable    Syracuse

    ${json_file_path}=    Set Variable    ${json_path}${product}.json
    Log To Console   json_file_path = ${json_file_path}
    ${json_file}=    Load JSON From File     ${json_file_path}
    Log To Console   ${json_file}

    ${app_url_arr}=    Get Value From Json    ${json_file}     $.${env}.AppURL
    ${app_url}=  Set Variable  ${app_url_arr[0]}
    Log To Console    AppURL = ${app_url}

    #Create Webdriver    Chrome    alias=ch
    #Open Browser    ${app_url[0]}    Chrome    alias=ch
    #Sleep    10

    ${login_email}=    Get Value From Json    ${json_file}     $.${env}.Email
    Log To Console    Email = ${login_email}


    #SetUpDirVar
    #SetUpEnvVar  SCE  Syracuse
    InitializeTestCase
    Log To Console  ${AppURL}
    Set Global Variable  ${PRODUCT}  ${Product}
    Log To Console  ${PRODUCT}
    Log To Console    ${TEST NAME}

    #Read Csv File    ${TEST_DATA_DIR}/Sample.csv
    #Read Json File    ${TEST_DATA_DIR}/Sample1.json
    ${cell}=  Read Excel Cell Data    ${TEST_DATA_DIR}/Sample2.xlsx    Sheet1    5    2
    Log To Console  ${cell}
    ${row}=  Read Excel Row Data    ${TEST_DATA_DIR}/Sample2.xlsx    Sheet1    5
    Log To Console  ${row}
    ${col}=  Read Excel Column Data    ${TEST_DATA_DIR}/Sample2.xlsx    Sheet1    2
    Log To Console  ${col}

    @{list}=    Get Name And Desc    grOUp
    Log To Console  ${list}[0]
    Log To Console  ${list}[1]

    #Read Csv File    C:\\NB Automation\\auto_syc_master\\TestData\\Sample.csv
    @{dict}=    Convert Csv To Dict2    C:\\NB Automation\\auto_syc_master\\TestData\\Sample.csv
    Log Many  @{dict}

    @{dict1}=    Convert Csv To Dict    C:\\NB Automation\\auto_syc_master\\TestData\\Sample1.csv
    ${type string}=    Evaluate     type(@{dict1})
    Log To Console     ${type string}
    #Log To Console    ${dict1}[0]
    ${cnt}=    Get length    ${dict1}
    Log To Console     cnt=${cnt}
    &{d1}=    Get From List    ${dict1}    0
    ${type string}=    Evaluate     type(&{d1})
    Log To Console     ${type string}
    Log Many    &{d1}
    Log To Console    ${d1.Identifier}

*** Keywords ***

    
*** Test Cases ***
TestTC
    @{dict1}=    Convert Csv To Dict    C:\\NB Automation\\auto_syc_master\\TestData\\Sample1.csv
    ${type string}=    Evaluate     type(@{dict1})
    Log To Console     ${type string}
    #Log To Console    ${dict1}[0]
    ${cnt}=    Get length    ${dict1}
    Log To Console     cnt=${cnt}
    &{d1}=    Get From List    ${dict1}    0
    ${type string}=    Evaluate     type(&{d1})
    Log To Console     ${d1}
    Log Many    &{d1}
    Log To Console    ${d1.MainTrack}

    #${str}=    Set Variable    ${d1.MainTrack}
    @{roles}=    Split String    ${d1.MainTrack}    separator=:
    ${cnt}=    Get length    ${roles}
    Log To Console     cnt=${cnt}

    FOR    ${role}    IN    @{roles}
        Log To Console    ${role}
    END

    IF    ${cnt} > 1
        FOR  ${index}  IN RANGE  1  ${cnt}
            Log To Console    ${index}
            ${index_str}=    Convert To String    ${index}
            ${mod_xpath}=  Replace String  ${MainTrackDropdownAdd}  index  ${index_str}
            Log To Console    ${mod_xpath}
            ${xpath_agent_type}=    Set Variable    //body/main[1]/div[1]/section[1]/ul[1]/div[1]/li[${index}]/div[1]/span[1]/a[1]
            Log To Console    ${xpath_agent_type}
        END
    END
