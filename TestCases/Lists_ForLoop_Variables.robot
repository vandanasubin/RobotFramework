*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***


*** Test Cases ***
# in this case, we are going to define the variables here, in the test case section ITSELF
TC_001:- VariableTest
    ${Var1}=  set variable    HelloWorld
    log to console    ${Var1}

TC_002: - List Implementation
    @{List1}  create list    Hello    22    22.3    abcd1234    World
    ${List_len}    get length    ${List1}
    log to console    ${List_len}
    ${list_data}=    get from list    ${List1}    3
    # if the index -1 means the last position , -2 -> second last position and so on
    log to console    ${list_data}


TC_003: - For_Range_Test
    FOR    ${i}    IN RANGE    1    10
      log to console    ${i}
    END

TC004: - List_With_Loop_Test
    @{List1}  create list    Hello    22    22.3    World    World1234
    FOR    ${i}     IN    @{List1}
      log to console    ${i}
    END


TC005: - Run & Run_If Test
    # how to run the keyword stored in a variable. This is how we execute the keywords which are stored in to the variable
    ${Key_Var}=    set variable    log to console
    run keyword    ${Key_Var}    Testing RunKeywordOption
    ${var}=    set variable    YES
    # Below code shows how to conditionally execute the keywords
    run keyword if  '${var}'=='YES'  log to console    Value Found
    run keyword if  '${var}'=='NO'    log to console    Value not found











