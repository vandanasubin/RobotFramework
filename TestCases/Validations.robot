# Validations means assertions
*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/User_defined_01.robot
Documentation    This file contains test cases for validating the checkboxes
Suite Setup    Before Each Test Suite
Suite Teardown    After Each Test Suite


*** Variables ***
${var1}    https://www.thetestingworld.com/


*** Test Cases ***
TC_001_ValidationTest
    open browser    ${var1}    chrome
    maximize browser window
    page should contain    VIDEOS1
    click element    xpath://span[text()='VIDEOS ']
    sleep    10 seconds


TC_002_Checkbox_Validation
    [Tags]    Checkboxes
   [Documentation]    This testcase defines the checkbox checking and unchecking with user defined keywords
     ...              Second line of documentation

   [Timeout]    5 minutes  # If the testcase is not completed within the specified timeout value, then timeout error occurs

   ${title}=    initial browser setup withargs    chrome     https://www.thetestingworld.com/testings/
   log to console    ${title}
   input text    name:fld_username    ${title}    # input the value retrieved.
   select checkbox    name:terms
   checkbox should be selected    name:terms
   sleep    5 seconds
   click element    name:terms     #To uncheck an already selected checkbox.use click element
   checkbox should not be selected    name:terms
   sleep    5 seconds
   element text should be    xpath://div[@id='tab-content1']/p     Register now and kick start your career as a Software Testing Pro!
   element should contain    xpath://div[@id='tab-content1']/p     Register now
   #title should be
   #element should be enabled/visible








