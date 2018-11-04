*** Settings ***
Documentation    Talk about what this suite of tests does
Resource    ../Resources/FrontOfficeApp.robot
Resource    ../Resources/CommonWeb.robot
Test Setup    CommonWeb.Begin Web Test
Test Teardown    CommonWeb.End Web Test

*** Variables ***
${BROWSER} =    chrome
${URL} =    http://www.robotframeworktutorial.com/front-office

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]    This is test 1
    [Tags]    test1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go To "Team" Page

"Team" page should match requirements
    [Documentation]    This is test 2
    [Tags]    test2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go To "Team" Page
    FrontOfficeApp.Validate "Team" Page
