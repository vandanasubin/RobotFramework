*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections

*** Variables ***
${base_url}    http://thetestingworldapi.com/


*** Test Cases ***
TC_001_Add_New_Resource
    # &{headers}=    create dictionary    content-type=application/json
    create session    Addnewdata    ${base_url}
    &{body}=    create dictionary  id=1818  first_name= Mantra   middle_name= sample string 3   last_name= sample string 4   date_of_birth= 31/07/1990
    ${response}=    POST   ${base_url}api/studentsDetails    json=&{body}
    Status Should Be    200    ${response}
    log   ${response.content}



