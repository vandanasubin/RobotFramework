*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../Resources/User_defined_01.robot

*** Variables ***
${url1}    https://www.thetestingworld.com/testings/
${url2}    https://www.google.com/
${env}    chrome


*** Test Cases ***
# In this Section, we are gonna discuss on how to handle the actions to be performed when user has to
#switch between browser windows/pop ups

TC_001_Switch_Btwn_Browsers
    Start_Browser_And_Maximize    # user defined keyword with no args
    open browser    ${url2}      chrome
    maximize browser window
    switch browser    1
    ${url}=    get location
    log to console    ${url}
    input text    name:fld_username    vandana@gmail.com
    sleep    1 seconds
    switch browser   2
    ${url}=    get location
    log to console    ${url}
    sleep    1 seconds
    input text    css:[title='Search']    latest films
    close all browsers


TC_002_Switch_Btwn_Multiple_Tabs_in_browser
    open browser    https://robotframework.org/    ${env}
    maximize browser window
    mouse down on link    xpath://a[text()='robocon.io']
    click link    xpath://a[text()='robocon.io']
    # we can switch windows usitng the window titles/window handles/window urls
    switch window    Robot Framework
    sleep    5 seconds
    # switched using the window title
    ${url}=  get location
    log to console    ${url}
    switch window    robot-framework
    sleep    5 seconds
    ${url}=  get location
    log to console    ${url}


TC_002_Window_Handles_Test
    open browser    https://robotframework.org/    ${env}
    maximize browser window
    mouse down on link    xpath://a[text()='robocon.io']
    sleep    3 seconds
    click link    //a[text()='robocon.io']
    @{handles}=   get window handles
    FOR    ${handle}    IN    @{handles}
      switch window    ${handle}
      ${url}=    get location
      log to console    ${url}
    END









