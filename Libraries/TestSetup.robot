*** Settings ***
Resource    ../Resources/Imports.robot

*** Variables ***
${GMAIL_ACCOUNT}        #   Sender Email Address
${GMAIL_PASSWORD}       #   App Password
${RECIPIENT_ADDRESS}    #   Recipient Email Address

*** Keywords ***
SetUpDirVar
    Set Test Variable   ${AUTODIR}   auto_syc_master

    ${work_dir}=   Fetch From Left   ${EXECDIR}   ${AUTODIR}
    Set Test Variable   ${WORKDIR}  ${work_dir}${AUTODIR}
    Set Global Variable  ${ROOT_DIR}  ${WORKDIR}

    ${test_script_dir}=   Set Variable   ${WORKDIR}\\TestScripts
    Set Global Variable  ${TEST_SCRIPT_DIR}  ${test_script_dir}

    ${test_data_dir}=   Set Variable   ${WORKDIR}\\TestData
    Set Global Variable  ${TEST_DATA_DIR}  ${test_data_dir}

    ${result_dir}=   Set Variable   ${WORKDIR}\\Results
    Set Global Variable  ${RESULT_DIR}  ${result_dir}

SetUpEnvVar
    [Arguments]  ${prod}   ${env}
    &{vars}=  Define Environment Variables From Json File  ${prod}  ${env}
    FOR  ${key}  ${value}  IN  &{vars}
        Log  Key is '${key}' and value is '${value}'.
        ${var_value}=  Get Variable Value  ${${key}}   ${value}
        Set Global Variable  ${${key}}  ${var_value}
    END

CheckTestDataFile
    [Arguments]  ${test_data_file}=${TEST NAME}
    ${files}=    List Directory    ${TEST_DATA_DIR}    ${test_data_file}*
    ${len}=    Get Length    ${files}
    Log To Console    ${files}
    Log To Console    ${len}
    Run keyword if    ${len}!=1    Fail    msg=Check test data file
    #Length Should Be    ${files}    1

InitializeTestCase
    SetUpDirVar
    SetUpEnvVar  ${Product}  ${Environment}
    #CheckTestDataFile   Sample

SetUpEnvVar1
    [Arguments]  ${product}  ${env}
    ${env_dir}=   Set Variable   ${AUTODIR}\\Environments\\

    ${json_file_path}=    Set Variable    ${env_dir}${product}.json
    Log To Console   json_file_path = ${json_file_path}
    ${json_file}=    Load JSON From File     ${json_file_path}
    Log To Console   ${json_file}

    ${app_url_arr}=    Get Value From Json    ${json_file}     $.${env}.AppURL
    ${app_url}=  Set Variable  ${app_url_arr[0]}
    Log To Console    AppURL = ${app_url}

    ${login_email_arr}=    Get Value From Json    ${json_file}     $.${env}.Email
    ${login_email}=  Set Variable  ${login_email_arr[0]}
    Log To Console    Email = ${login_email}

SendEmail
    Authorize   account=${GMAIL_ACCOUNT}    password=${GMAIL_PASSWORD}
    ${TIMESTAMP}=    Get Current Date    result_format=%d-%m-%y_%H-%M
    #${REPORT_FILE_NAME}=    Set Variable    ${RESULT_DIR}\\${TIMESTAMP}.html
    Copy File    ${RESULT_DIR}\\report.html    ${RESULT_DIR}\\${TIMESTAMP}.html
    ${ATTACHMENT}=  Set Variable    ${RESULT_DIR}\\${TIMESTAMP}.html
    Send Message    sender=${GMAIL_ACCOUNT}
    ...             recipients=${RECIPIENT_ADDRESS}
    ...             subject=Message
    ...             body=Hello
    ...             attachments=${ATTACHMENT}
    Remove File    ${RESULT_DIR}\\${TIMESTAMP}.html
