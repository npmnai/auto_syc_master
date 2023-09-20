*** Settings ***
Library    String
Library    Dialogs
Library    OperatingSystem
Library    Collections
Library    BuiltIn
Library    DateTime
Library    ../../resources/libraries/common.py
Library    Telnet

*** Variables ***
# *** SUITE VARIABLES ***
${env}                 b2b
${headless}            true
${verify_ssl}          false
${browser}             chromium
${browser_timeout}     60 seconds
${email_domain}        @spryker.com
${default_password}    change123
${admin_email}         admin@spryker.com
${device}
# *** DB VARIABLES ***
${default_db_host}         127.0.0.1
${default_db_name}         eu-docker
${default_db_password}     secret
${default_db_port}         3306
${default_db_port_postgres}    5432
${default_db_user}         spryker
${default_db_engine}       pymysql
${docker}     ${False}
${docker_db_host}     database
${docker_cli_url}     http://cli:9000
${cli_path}    ..
${db_engine}
${yves_env}
${yves_at_env}
${zed_env}
${mp_env}
${glue_env}
${db_port}
# ${default_db_engine}       psycopg2
# ${device}              Desktop Chrome
# ${fake_email}          test.spryker+${random}@gmail.com

*** Keywords ***
Wait Until Element Is Visible
    [Arguments]    ${locator}    ${message}=${EMPTY}    ${timeout}=${browser_timeout}
    Wait For Elements State    ${locator}    visible    ${timeout}    ${message}

Wait Until Page Contains Element
    [Arguments]    ${locator}    ${message}=${EMPTY}    ${timeout}=${browser_timeout}
    Wait For Elements State    ${locator}    attached    ${timeout}    ${message}

Wait Until Page Does Not Contain Element
    [Arguments]    ${locator}    ${message}=${EMPTY}    ${timeout}=${browser_timeout}
    Wait For Elements State    ${locator}    detached    ${timeout}    ${message}

Wait Until Element Is Enabled
    [Arguments]    ${locator}    ${message}=${EMPTY}    ${timeout}=${browser_timeout}
    Wait For Elements State    ${locator}    enabled    ${timeout}    ${message}

Element Should Be Visible
    [Arguments]    ${locator}    ${message}=${EMPTY}    ${timeout}=0:00:05
    Wait For Elements State    ${locator}    visible    ${timeout}    ${message}

Page Should Contain Element
    [Arguments]    ${locator}    ${message}=${EMPTY}    ${timeout}=0:00:05
    Wait For Elements State    ${locator}    attached    ${timeout}    ${message}

Get Location
    ${current_location}=    Get URL
    ${location}=    Set Variable    ${current_location}
    Set Test Variable    ${location}    ${location}
    [Return]    ${location}

Save current URL
    ${current_url}=    Get URL
    ${url}=    Set Variable    ${current_url}
    Set Test Variable    ${url}    ${url}
    [Return]    ${url}

Wait Until Element Is Not Visible
    [Arguments]    ${locator}    ${message}=${EMPTY}    ${timeout}=${browser_timeout}
    Wait For Elements State    ${locator}    hidden    ${timeout}    ${message}

Page Should Contain Link
    [Arguments]    ${url}    ${message}=${EMPTY}
    ${hrefs}=    Evaluate Javascript     ${None}    Array.from(document.querySelectorAll('a')).map(e => e.getAttribute('href'))
    Should Contain    ${hrefs}    ${url}

Scroll Element Into View
    [Arguments]    ${locator}
    Hover    ${locator}

Input Text
    [Arguments]    ${locator}    ${text}
    Type Text    ${locator}    ${text}    0ms

Table Should Contain
    [Arguments]    ${locator}    ${expected}    ${message}=${EMPTY}    ${ignore_case}=${EMPTY}
    Get Text    ${locator}    contains    ${expected}    ${message}

Table Should Not Contain
    [Arguments]    ${locator}    ${expected}    ${message}=${EMPTY}    ${ignore_case}=${EMPTY}
    Get Text    ${locator}    not contains    ${expected}    ${message}

Element Should Contain
    [Arguments]    ${locator}    ${expected}    ${message}=${EMPTY}    ${ignore_case}=${EMPTY}
    Get Text    ${locator}    contains    ${expected}    ${message}

Element Text Should Be
    [Arguments]    ${locator}    ${expected}    ${message}=${EMPTY}    ${ignore_case}=${EMPTY}
    Get Text    ${locator}    equal    ${expected}    ${message}

Wait Until Element Contains
    [Arguments]    ${locator}    ${text}    ${timeout}=${browser_timeout}    ${message}=${EMPTY}
    Get Text    ${locator}    contains    ${text}    ${message}

Page Should Not Contain Element
    [Arguments]    ${locator}    ${message}=${EMPTY}    ${timeout}=0:00:05
    Wait For Elements State    ${locator}    detached    ${timeout}    ${message}

Element Should Not Contain
    [Arguments]    ${locator}    ${text}
    Get Text    ${locator}    validate    "${text}" not in value

Checkbox Should Be Selected
    [Arguments]    ${locator}
    Get Checkbox State    ${locator}    ==    checked

Checkbox Should Not Be Selected
    [Arguments]    ${locator}
    Get Checkbox State    ${locator}    ==    unchecked

Mouse Over
    [Arguments]    ${locator}
    Hover    ${locator}

Element Should Not Be Visible
    [Arguments]    ${locator}    ${message}=${EMPTY}    ${timeout}=0:00:05
    Wait For Elements State    ${locator}    hidden    ${timeout}    ${message}

Get Element Attribute
    [Arguments]    ${locator}    ${attribute}
    ${element_attribute}=    Get Attribute    ${locator}    ${attribute}
    [Return]    ${element_attribute}

Select From List By Label
    [Arguments]    ${locator}    ${value}
    Select Options By    ${locator}    label    ${value}

Select From List By Value
    [Arguments]    ${locator}    ${value}
    Select Options By    ${locator}    value    ${value}

Select From List By Index
    [Arguments]    ${locator}    ${value}
    Select Options By    ${locator}    index    ${value}

Select From List By Text
    [Arguments]    ${locator}    ${value}
    Select Options By    ${locator}    text    ${value}

Create New Context
    ${new_context}=    New Context
    New Page    ${yves_url}

Switch back to the Main Context
    Switch Context    ${main_context}
