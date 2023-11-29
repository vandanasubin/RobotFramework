*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections

*** Variables ***
${base_url}    http://thetestingworldapi.com/
${student}    8442799


*** Test Cases ***
TC_001_Update_New_Resource
    # &{headers}=    create dictionary    content-type=application/json
    create session    Addnewdata    ${base_url}
    &{body}=    create dictionary  id=${student}  first_name= Mantra   middle_name= Calamares   last_name= Lumpia   date_of_birth= 11/11/2011
    ${relative_url}=    catenate    api/studentsDetails/    ${student}
    ${response}=    PUT On Session   Addnewdata    api/studentsDetails/8442799    data=${body}
    Status Should Be    200    ${response}
    log   ${response.content}

