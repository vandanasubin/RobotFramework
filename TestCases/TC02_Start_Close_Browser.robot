*** Settings ***
# seleniumlibrary is the package which is used in robot framework to automate the web apps
Library    SeleniumLibrary


*** Variables ***
# There should be exactly two spaces between variable and the value
${Browser}    Chrome
${Url}    https://demo.automationtesting.in/Register.html


*** Test Cases ***

TC003_User Registration Test
# indendation concept is followed in robot framework
# Exactly two spaced btwn the keyword and the arg or the arg and the arg

  open browser    ${Url}  ${Browser}
  maximize browser window
  input text  CSS:[placeholder='First Name']  Vandana
  INPUT TEXT    CSS:[placeholder='Last Name']    Nair
  clear element text  CSS:[placeholder='First Name']
  select radio button  radiooptions    FeMale
  select checkbox    css:[value='Cricket']
  mouse down on link    xpath://*[@ class='link google-plus']
  click link    xpath://*[@ class='link google-plus']
  #close browser















