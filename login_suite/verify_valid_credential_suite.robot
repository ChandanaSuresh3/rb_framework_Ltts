*** Settings ***
Documentation   This suite file verifies all test cases related to valid credentials

Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
Verify Valid Credential Test
     Append To Environment Variable    path      ${EXECDIR}\\drivers
     Open Browser  url=https://demo.openemr.io/b/openemr/index.php     browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Input Text    id=authUser   admin12
     Input Password    id=clearPass    pass
     Select From List By Label    name=languageChoice     English (Indian)
     Click Element    xpath=//button[@type='submit']
     Title Should Be    OpenEMR
     Close Browser