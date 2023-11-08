*** Settings ***
Resource    ../Resources/User_defined_Keywords.robot


*** Variables ***



*** Test Cases ***
TestCases in BDD Format
    Given Start_Browser_And_Maximize
    Given set selenium speed    1 seconds
    Then select from list by value    name:sex    2
    Then select from list by label    name:sex    Male
    # when the robot framework runs, the gherkin keywords will be automatically ignored by the framework
