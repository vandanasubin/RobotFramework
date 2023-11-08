*** Settings ***

Library    SeleniumLibrary
Test Timeout    5mins 20s

# we can apply timeout in the test suite level
Force Tags    FRTags
# Force tags will be applied to all test cases in the declared suite
Default Tags    DFLT
# default tags will be applicable to those test cases to which tags are not applied at all

*** Variables ***

${Browser}    chrome
${url}    https://www.thetestingworld.com/testings/

*** Test Cases ***

Scenarios List and Dropdowns
    [Tags]    Regression    Testing
# In lists, Multiple option selection is possible . In dropdown, selections will be overriden
  open browser    ${Url}  ${Browser}
  maximize browser window
  # after each line of code, it waits for 2 seconds
  set selenium speed    1 seconds
  select from list by value    name:sex    2
  select from list by label    name:sex    Male


*** Keywords ***






