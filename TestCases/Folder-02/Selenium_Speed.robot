*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/User_defined_Keywords.robot
Force Tags    FRTags

*** Test Cases ***
TC_01 Set & get Selenium Speed and Waits
    [Tags]    Speed Related
    Start_Browser_And_Maximize
    set selenium speed    1 seconds
    #sleep    10 seconds
    # will wait for 10 secs only after the previous statement .
    #Not for all the following commands
    #value can be given as a number that is considered to be seconds .
    #Waits before each selenium commands following this keyword
    input text    name:fld_username    vandtest
    input text    name:fld_email    test@gmail.com
    input text    name:fld_password    Test@123
    input text    name:fld_cpassword    Test@123
    input text    id:datepicker    31/07/1990
    input text    name:phone    7829844597
    input text    name:address    add1, add2
    ${speed}=    get selenium speed
    log to console    ${speed}


TC_02 Explicit Waits_Default

    [Tags]    Waits
    Start_browser_and_maximize
    ${tm}=    get selenium timeout
    log to console    ${tm}
    wait until page contains    Apple


TC_02 Explicit Waits_Manual Setting
    [Tags]    Waits
    Start_Browser_And_Maximize
    set selenium timeout    20 seconds
    ${tm}=    get selenium timeout
    log to console    ${tm}
    wait until page contains    Apple


TC_Set_ImplicitWaits
    [Tags]    Waits
    Start_Browser_And_Maximize
    go to    https://facebook.com
    ${url1}=    get location
    log to console    ${url1}
    go back    # will hit the back button .
    ${url1}=    get location
    log to console    ${url1}
    # we can navigate to different url using the go to keyword
    maximize browser window
    ${default_T}=    get selenium implicit wait
    log to console    ${default_T}
    set selenium implicit wait    20 seconds
    ${default_T}=    get selenium implicit wait
    log to console    ${default_T}
    # so if the element is found within 20 secs, it will go to the next step
    input text    name:fld_username    vandtest
    capture page screenshot  ./Screenshots/TC_ImplicitWait.png
    open browser    https://www.facebook.com    chrome
    sleep    10 seconds
    execute javascript    window.scrollTo(0,1000)
    # horizontal, vertical scroll to no of pixels
    sleep    10 seconds
    close all browsers
    # This statement will close only those browsers opened by this test case

TC_002: Context Click and Selection
    [Tags]    Mouse Moves
   Start_Browser_And_Maximize
   open context menu    xpath://span[contains(text(),'VIDEOS')]    #rightclick on the option
   double click element    xpath://a[contains(text(),'Quick Demo')]
   # mouse down and mouse up on the same element provides the Click operation in altogether
   mouse over  xpath://span[contains(text(),'VIDEOS')]  #hover over the element


TC_003_KEYBOARD_OPERATIONS
    [Tags]    KeyboardActions
   open browser  https://demo.automationtesting.in/SignIn.html  chrome
   maximize browser window
   sleep    2 seconds
   # keyboard operation using which we enter the data in fields
   press keys    xpath://input[@placeholder='E mail']    vandanagnair09@gmail.com
   press key    \\13
   #Where 13 is the ASCII for Enter key . Every keyboard button has an associated ASCII value .
   # In that way also, we can


#TC_004: ConditionalWaits
    #wait until page contains   - wait untill the Text is found on the ui
    #wait until page contains element     - wait untill the specific element is visible
    #wait until element contains     - wait untill the element with the locator contains a specific text














