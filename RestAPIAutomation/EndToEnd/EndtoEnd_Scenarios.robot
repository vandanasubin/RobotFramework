*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections


*** Variables ***
${base_url}    http://thetestingworldapi.com/
${Original_name}    Hellotest
${updated_name}    Updated_Hello

*** Test Cases ***
TC_001_RequestChaining
     [Tags]    Regression
    [Documentation]    This test is for end to end scenario using the POST, PUT, DELETE, GET
    &{headers}=    create dictionary    content-type=application/json
    create session    endtoend    ${base_url}    headers= ${headers}
    ${body}=    create dictionary    first_name= ${Original_name}   middle_name= Calamares   last_name= Lumpia   date_of_birth= 11/11/2011
    ${postresponse}=    POST On Session   endtoend    /api/studentsDetails    data=${body}
    ${jsonresponse}=    convert string to json    ${postresponse.content}
    @{id_list}=    get value from json    ${jsonresponse}   id
    log to console    ${id_list}
    ${id_value}=    get from list    ${id_list}    0

    ${body1}=    create dictionary    id=${id_value}    first_name= ${updated_name}     middle_name= Calamares   last_name= Lumpia   date_of_birth= 11/11/2011
    ${putresponse}=    PUT On Session  endtoend  api/studentsDetails/${id_value}    headers=${headers}   data=${body1}
    log to console    ${putresponse.status_code}
    Status Should Be    200    ${putresponse}


    Fetch details and validate     ${id_value}

    ${deleteresponse}=    delete on session    endtoend    api/studentsDetails/${id_value}
    ${jsonresponse}=    convert string to json    ${deleteresponse.content}
    Status Should Be    200    ${deleteresponse}
    @{success_msg}=    get value from json  ${jsonresponse}  msg
    should contain    @{success_msg}   success

*** Keywords ***

Fetch details and validate
    [Documentation]    Fetch the details and validate the data
    [Arguments]  ${id_value}
    ${getresponse}=    get on session     endtoend    api/studentsDetails/${id_value}
    ${jsonresponse}=    convert string to json    ${getresponse.content}
    Status Should Be    200    ${getresponse}
    ${actualname}=    get value from json  ${jsonresponse}    first_name
    should be equal as strings    ${actualname}    ${updated_name}     Names are not matching















