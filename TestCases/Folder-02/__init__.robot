# whenever our test suite is a folder, we have to creae the __init__.robot file and have to add the setup , teardown tests.*** Keywords ***
# I could say that these are the initialization files

*** Settings ***
Force Tags    FRTags

*** Variables ***



*** Keywords ***

Before Each Suite
    Log    Before Each Suite

After Each Suite
   Log  After Each Suite




