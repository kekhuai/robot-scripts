*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_TEAM_LINK} =    css:#bs-example-navbar-collapse-1 > ul > li:nth-child(5)

*** Keywords ***
Select "Team" Page
    Click Element    ${TOPNAV_TEAM_LINK}
