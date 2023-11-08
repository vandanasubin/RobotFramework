*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    chrome
${url}    https://www.thetestingworld.com/testings/

*** Test Cases ***
TC005_With Keywords Implementation
    open browser    ${url}    ${Browser}
    maximize browser window
    Enter the Credentials    vandananair@gmail.com    Pass@123

*** Keywords ***
# this keyword can only be used in this file .Keywords with arguments
Enter the Credentials
    [Arguments]   ${username}    ${password}
    click element    xpath://label[text()='Login']
    input text    name:_txtUserName    ${username}
    input text    name:_txtPassword    ${password}
    click button    css:[value='Login']


