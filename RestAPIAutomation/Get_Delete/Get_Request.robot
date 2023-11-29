*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary


*** Variables ***
${Base_URL}   https://thetestingworldapi.com/
${Get_Student}  api/studentsDetails
${StudentId}    /8434174

*** Test Cases ***
TC_001_Get_Request_Students_Details
    [Tags]    get
    Create Session    Get Student Details   ${Base_URL}
    # create an http session to the server
    ${response}=    GET On Session     Get Student Details    ${Get_Student}
    # response is in string format
    # sending a get request on the created session
    log    ${response.json()}
    # response in .json format
    log to console    ${response.content}


TC_002_Get_Request_Student_Details
    [Tags]    get
    create session    Get Student Details    ${Base_URL}
    ${student_API} =     catenate     ${Get_Student}${StudentId}
    # IF THE first item contains seperator, then use the <seperator>
    ${response}=    GET On Session   Get Student Details      ${student_API}
    log    ${response}
    ${statuscode}   convert to string    ${response.status_code}
    should be equal       ${statuscode}    200
    should be equal as strings    OK    ${response.reason}
    should be equal as strings    200    ${response.reason}
    #log to console    ${response.status_code}
    #log to console  ${response.content}


TC_003_With_GET_Keyword
    [Tags]    get
    create session    Get Student Details    ${Base_URL}
    ${student_API} =     catenate    ${Base_URL}${Get_Student}${StudentId}
    # IF THE first item contains seperator, then use the <seperator>
    ${response}=    GET   ${student_API}
    log    ${response}
    Status Should Be    OK    ${response}
    # We can validate with status code / string of the status like ok, not available etc


TC_004_JSONValidation
    [Tags]    Regression

    create session    Get Student Details    ${Base_URL}
    ${student_API} =     catenate    ${Base_URL}${Get_Student}${StudentId}
    ${response}=    GET   ${student_API}
    log to console    ${response.content}
    # response here is in the form of string
    Status Should Be    200    ${response}
    ${jsonResponse}=    convert string to json    ${response.content}
    # response is converted to String format
    @{firstname_list}=    get value from json    ${jsonResponse}     data.first_name
    ${first_name}=    get from list    ${firstname_list}    -1
    should be equal  ${firstname}   FName131    Actual value is Wrong
    # actual, expected, error message
    # 0,1,-1,-2 etc are the indices

























