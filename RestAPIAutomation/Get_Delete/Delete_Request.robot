*** Settings ***
Library    Collections
Library    JSONLibrary
Library    RequestsLibrary

*** Variables ***
${base_url}    http://thetestingworldapi.com/
${student}     8442669


*** Test Cases ***

TC_001_Validate_Delete_Request
    [Tags]    Sanity    Regression
    create session    deletedata    ${base_url}
    ${response}=    DELETE On Session    deletedata    api/studentsDetails/${student}
    log to console  ${response.status_code}
    log to console    ${response.content}
    Status Should Be    200    ${response}
    ${responsejson}=    convert string to json    ${response.content}
    @{success_msg}=    get value from json  ${responsejson}  msg
    should contain    @{success_msg}   success


