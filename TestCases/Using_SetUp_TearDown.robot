*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/User_defined_Keywords.robot    #../- > means , from the current location, one position upwards .
Test Setup    Start_Browser_And_Maximize
Test Teardown    Close Browser Window
Suite Setup    Before Each Test Suite
Suite Teardown    After Each Test Suite
# When added under settings, it will be applicable for every test cases in the suite
# Suite setup, teardown will execute before and after each Test Suite


*** Test Cases ***

Enter RegistrationForm Using JsonFile
    #[Setup]       Start_Browser_And_Maximize
    #[Teardown]    Close Browser Window
    # we can add the setup and tear down as above two statements at test case level
    ${username} =    Read from json file    Registration.username_name
    ${password}=    Read from json file     Registration.password_name
    ${email}=    Read from json file    Registration.Email_name
    input text    name:${username}    Vandana
    input text    name:${email}    test@gmail.com
    input text    name:${password}    Test@123
    input text    name:dob    31/07/1990



