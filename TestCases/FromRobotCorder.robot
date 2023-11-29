*** Settings ***
Documentation     A test suite with a single test for Register
...               Created by hats' Robotcorder
...               This is a chrome extension
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
Register test
    Open Browser    https://demo.automationtesting.in/Register.html    ${BROWSER}
    Input Text    //input[@class="form-control ng-untouched ng-dirty ng-valid-parse ng-valid ng-valid-required"]    vandana
    Input Text    //input[@class="form-control ng-untouched ng-dirty ng-valid-parse ng-valid ng-valid-required"]    nair
    Input Text    //textarea[@class="form-control ng-untouched ng-valid ng-dirty ng-valid-parse"]    Someshwara Nagar
Shirdi Sai Nivas
    Input Text    //input[@class="form-control ng-untouched ng-valid-email ng-dirty ng-valid ng-valid-required"]    vandanagnair09@gmail.com
    Select From List By Value    //select[@id="country"]    India
    Input Text    //input[@class="form-control ng-untouched ng-invalid ng-dirty ng-valid-parse ng-valid-required ng-invalid-pattern"]    12324234
    Click Element    xpath=(//input[@name="radiooptions"])[2]
    Select From List By Value    //select[@id="Skills"]    Configuration
    Select From List By Value    //select[@id="yearbox"]    1931
    Select From List By Value    xpath=(//select[@class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required"])[2]    April
    Select From List By Value    //select[@id="daybox"]    15
    Click Element    //html
    Click Element    xpath=(//div[@class="form-group"])[13]
    Click Element    //button[@name="signup"]

    Close Browser