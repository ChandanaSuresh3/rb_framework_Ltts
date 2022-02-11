*** Settings ***
Documentation   This file contains reusable keywords

Library     SeleniumLibrary
Library     OperatingSystem


*** Keywords ***
Launch Browser
     Append To Environment Variable    path      ${EXECDIR}\\drivers
     Open Browser  url=https://demo.openemr.io/b/openemr/index.php     browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s