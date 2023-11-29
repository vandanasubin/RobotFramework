*** Settings ***
Library    SikuliLibrary    mode=NEW
# mode is added to mention that we alwayd need to import the latest available library
# Pycharm is unable to recognize the sikuli commands, which can be ignored for now

*** Variables ***

*** Test Cases ***
TC_001 Start Browser on Windows
    start sikuli process
    Add Image Path    ../Sikuli_images
    Click    Start_menu.png
    Double Click    Google_Chrome.png
    Input text    Search_bar.png    Java documentation
    Press Special Key    ENTER



TC_03_NavigatetoTaskBar_Flow
    start sikuli process
    Add Image Path    ../Sikuli_Images
    Right Click    Taskbar.png
    Click    ShowD.png
    Double Click    GoogleDesktop.png


TC_04_Navigation_DoubleClick_In
   start sikuli process
   Add Image Path    ../Sikuli_Images
   Click   Start_menu.png
   Wheel Down  5     Edge.png
#   Screen Should Contain    Edge.png
#   Right Click   Edge.png
#   Double Click  In    EdgeRightcick.png    RClick_PrivateWindow.png





