*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/Team.robot
Resource  ./PO/TopNav.robot

*** Variables ***
${TEAM_HEADLINE} =  xpath=.//*[@id='team']//h2

*** Keywords ***

Click "Team" Link
    Landing.Load Landing Page
    Landing.Verify Page Loaded
    TopNav.Click "Team" button
    Team.Verify Page Loaded

Verify Team Heading
    Team.Verify Team h2 text
    Team.Verify Team h3 text