*** Settings ***
Library    OperatingSystem
*** Test Cases ***
Test
    #${index}=    Set Variable    1
    FOR  ${index}  IN RANGE  1  8
        ${xpath}=    Set Variable    //body/main[1]/div[1]/section[1]/ul[1]/div[1]/li[${index}]/div[1]/span[1]/a[1]
        Log To Console    ${\n}${xpath}
    END