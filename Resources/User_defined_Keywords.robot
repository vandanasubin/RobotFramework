*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/Utility.py
Library    ../ExternalKeywords/DataDrivenMethods.py

# importing the user defined python functions in to the robot file

*** Variables ***
${Browser}    chrome
${url}    https://www.thetestingworld.com/testings/


*** Keywords ***

Concatenate two Strings
    [Arguments]    ${String1}    ${String2}
    ${resultval}=    StringConcatination    ${String1}    ${String2}
    log    ${resultval}


Create Folder at RunTime
    [Arguments]    ${foldername}    ${subfoldername}
    createFolder    ${foldername}
    createSubFolder    ${subfoldername}
    log     Task is done successfully


Before Each Test suite
    Log    Before each Test Suite


After Each Test Suite
    Log    After Each Test Suite


Start_Browser_And_Maximize
    [Documentation]     user defined keywords with no arguments.
    open browser    ${url}    ${Browser}
    maximize browser window


Initial Browser SetUp WithArgs
  [Documentation]  User defined Keywords  with return values and arguments
  [Arguments]    ${UserEnv}    ${UserUrl}
  open browser    ${Userurl}    ${UserEnv}
  maximize browser window
  ${Title}=    get title
  [Return]    ${Title}


Close Browser Window
  ${title}=  get title
  log to console    ${title}
  close browser


Read from json file
  [Documentation]    This keyword allows user to read from the .json file
  [Arguments]    ${locatorname}
  ${locator} =    read locators from json    ${locatorname}
  [Return]    ${locator}


Read Number Of Rows
    [Arguments]    ${Sheetname}
    ${rows} =   fetch_max_rows     ${Sheetname}
    [Return]    ${rows}


Read Excel Data
    [Arguments]    ${Sheetname}    ${row}    ${column}
    ${cellData} =    fetch_cellData  ${Sheetname}    ${row}    ${column}
    [Return]    ${cellData}






























