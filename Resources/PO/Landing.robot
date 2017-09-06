*** Settings ***
Library  Selenium2Library

*** Variables ***
${LANDING_PAGE_VERIFY} =  Welcome To Our Studio!

*** Keywords ***
Load Landing Page
    go to  ${URL}
Verify Page Loaded
    WAIT UNTIL PAGE CONTAINS  ${LANDING_PAGE_VERIFY}