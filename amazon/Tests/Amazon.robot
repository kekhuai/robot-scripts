*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***
*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the suite
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

    Click Link  Proceed to checkout (1 item)
    Page Should Contain Element  css:h1.a-spacing-small
    Element Text Should Be  css:h1.a-spacing-small  Sign in

    Close Browser

*** Keyowrds ***
