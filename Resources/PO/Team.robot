*** Settings ***
Library  Selenium2Library

*** Variables ***
${TEAM_HEADLINE} =  xpath=.//*[@id='team']//h2
${TEAM_SUBHEADING} =  xpath=.//*[@id='team']//h3

*** Keywords ***

Verify Page Loaded
    wait until page contains element  ${TEAM_HEADLINE}

Verify Team h2 text
    ${element_text} =  get text  ${TEAM_HEADLINE}
    should be equal as strings  ${element_text}  Our Amazing Team   ignore_case=True
    # these worked for edge but not for gc
    #element text should be  ${TEAM_HEADLINE}  Our Amazing Team
    #element should contain  ${TEAM_HEADLINE}  Our Amazing Team

Verify Team h3 text
    element text should be  ${TEAM_SUBHEADING}  Lorem ipsum dolor sit amet consectetur.
    #element should contain  ${TEAM_SUBHEADING}  Lorem ipsum dolor sit amet consectetur.