*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/User_defined_Keywords.robot


*** Variables ***
${url}   https://www.facebook.com/campaign/landing.php


*** Test Cases ***
LoginLogout DatadrivenTest
    open browser    ${url}    chrome
    maximize browser window
    ${row}=    Read Number Of Rows    Test
    log   ${row}

    FOR    ${i}    IN RANGE    1    ${row}+1
      ${Firstname}=   Read Excel Data    Test    ${i}    1
      ${Surname}=    Read Excel Data    Test    ${i}    2
      ${Mobile}=   Read Excel Data    Test     ${i}    3

      input text    name:firstname    ${Firstname}
      input text    name:lastname    ${Surname}
      input text    name:reg_email__    ${Mobile}
      click button    name:websubmit
    END









