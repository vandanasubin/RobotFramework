*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary
Force Tags  Smoke

*** Variables ***
${base_url}    https://reqres.in


*** Test Cases ***
TC_001_Get_With_Param
    [Tags]    Sanity    Regression
    create session    Getdata    ${base_url}
    &{params}=    create dictionary    page=2
    ${response}=    GET On Session    Getdata    /api/users    params= ${params}
    # Query params can be passed as list of tuples, strings, dictionary
    log to console    ${response.status_code}
    log to console    ${response.content}
    Status Should Be    200    ${response}
    ${jsonresponse}=    convert string to json    ${response.content}
    @{first_name_list}=    get value from json    ${jsonresponse}    data[0].first_name
    ${first_name}=    get from list    ${first_name_list}    0
    should be equal as strings    ${first_name}    George








