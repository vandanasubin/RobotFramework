*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/User_defined_01.robot
Test Setup     Start_Browser_And_Maximize

*** Test Cases ***

Robot_Fetch_Data
    ${ActualUrl}=    get location
    log    ${ActualUrl}    # returns the URL
    ${pageTitle}=    get title
    log to console    ${pageTitle}
    ${Speed}=    get selenium speed
    log to console    ${Speed}
    input text    name:fld_username    vandana
    input text    name:fld_email    vandana@gmail.com
    input text    name:fld_password    Pass@123
    ${username}=    get value   name:fld_username
    ${password}=    get value    name:fld_password
    Concatenate two Strings    ${username}    ${password}     # use of user defined keywords
    ${placeholder}=    get element attribute    name:zip    placeholder
    log    ${placeholder}
    # get value retrieves the value given to the value attrbiute
    ${innertext}=    get text    xpath://a[@class='displayPopup']     # get text will get the inner text
    log    ${innertext}
    #sleep    5s
    select from list by index     name:country    3
    ${Val}=    get selected list label    name:country
    log    ${Val}
    ${Text}=    get selected list label    name:sex
    log    ${Text}
    ${AllLabels}=    get list items    name:sex
    log    ${AllLabels}    # returns a list

    ${countofelements}=    get element count    xpath://*[@type='text']
    log    ${countofelements}


TestUsingUserdefinedKeywords
    create folder at runtime    Testingworld    Subfolder







