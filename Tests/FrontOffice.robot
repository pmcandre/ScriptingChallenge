*** Settings ***
Documentation  This test suite tests the Team Page of the Front Office Page
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/Common.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

#to run type the following line in the terminal
#pybot -d results Tests/FrontOffice.robot


*** Variables ***

${BROWSER} =  ie
${URL} =  http://www.robotframeworktutorial.com/front-office/

*** Test Cases ***

Should be able to Navigate to "Team" page
    [Documentation]  Verify that the Team link in the top nav bar goes to the Team section of the page
    [Tags]  Test1
    FrontOfficeApp.Click "Team" Link
    sleep  2s
"Team" page should match requirements
    [Documentation]  Verify that the Team page header is correct
    [Tags]  Test 2
    FrontOfficeApp.Click "Team" Link
    FrontOfficeApp.Verify Team Heading

    sleep  2s