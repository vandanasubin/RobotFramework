*** Settings ***
Library    Collections
Library    JSONLibrary
Library    RequestsLibrary
Library    ../ExternalKeywords/Utility.py


*** Variables ***
${base_url}    http://thetestingworldapi.com/
${Original_name}    Hellotest
${updated_name}    Updated_Hello
${relative_url}     api/studentsDetails/
# these variables can be used across the robot test scripts


*** Keywords ***

Fetch details and Return Response
    [Documentation]    This keyword is used to fetch the details and return the response
    [Arguments]   ${id_value}   ${expected}
    create session    session    ${base_url}
    ${getresponse}=    get on session     session  ${relative_url}${id_value}
    ${jsonresponse}=    convert string to json    ${getresponse.content}
    Status Should Be    ${expected}    ${getresponse}
    [Return]    ${getresponse}



Fetch Request Content
    ${json_body}=    read req body
    [Return]    ${json_body}
    # json_body is of dict type, which we can use it in our test scripts


