*** Settings ***
Library    SikuliLibrary     mode=NEW


*** Variables ***
${path} =    ../Sikuli_Images

*** Test Cases ***

Test_01_Write_on_Notepad
    Start Sikuli and hit Windows Icon    ${path}
    Input Text   GUI_Search.png    Notepad
    Wait Until Screen Contain     Notepad.png    10
    # Here if it finds within 10 seconds, it will move to the next step
    Click    Notepad.png
    Highlight    NotepadEditor.png    secs=5
    Input Text    NotepadEditor.png    This is vandana Signing off!!!
    # will highlight the area selected while the image is captured
    Close Application     Notepad



Test_02_Get_Text_Demo
    Start Sikuli and hit Windows Icon    ${path}
    Input Text   GUI_Search.png    Notepad
    Wait Until Screen Contain     Notepad.png    10
   # Similarly we can return values here




*** Keywords ***
# we can create user defined keywords to perform repetitive tasks in sikuli
Start Sikuli and hit Windows Icon
    [Arguments]    ${Path}
    start sikuli process
    Add Image Path   ${Path}
    Click    Start_menu.png
    ${text} = Get Text





