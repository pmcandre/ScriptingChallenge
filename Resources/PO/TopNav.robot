*** Settings ***
Library  Selenium2Library

*** Variables ***
${TOPNAV_TEAM_LINK} =  xpath=.//*[@id='bs-example-navbar-collapse-1']/ul/li[5]/a


*** Keywords ***
Click "Team" button
    click link  ${TOPNAV_TEAM_LINK}