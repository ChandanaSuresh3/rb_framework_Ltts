*** Settings ***
Documentation   This suite file verifies all test cases related to valid credentials

Library     SeleniumLibrary
Library     OperatingSystem
Resource    ../base/common_functionality.resource

*** Test Cases ***
Verify Valid Credential Test
     Launch Browser
     Input Text    id=authUser   admin12
     Input Password    id=clearPass    pass
     Select From List By Label    name=languageChoice     English (Indian)
     Click Element    xpath=//button[@type='submit']
     Title Should Be    OpenEMR
     Close Browser