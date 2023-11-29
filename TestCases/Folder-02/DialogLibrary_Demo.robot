*** Settings ***
Library    Dialogs

*** Variables ***


*** Test Cases ***
TC_001:_Learn_DialogLibrary
    execute manual step    Go to Server machine and clear the logs
    # You will get a pop up and u can hit pass/fail based on the outcome of the task
    log to console    Testcase is completed


TC_002:_Learn_DialogLibrary
    pause execution    Go to Server machine and clear the logs
    # Will pause the execution until user hits ok button
    log to console    Testcase is completed
    ${password}=    get value from user    Please enter your password
    log to console    ${password}
    ${selectedCity}=    get selection from user    c1    c2    c3    c4
    log to console    ${selectedCity}
    @{all_selections}=    get selections from user    L1     L2    L3    L4    L5
    log to console    ${all_selections}








