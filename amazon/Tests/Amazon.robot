*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary

*** Variables ***
*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the suite
    [Tags]    Smoke

    Begin Web Test
    Search for Products
    Select Product from Search Results
    Add Product to Cart
    Begin Checkout
    End Web Test

*** Keywords ***
Begin Web Test
    Open Browser    about:blank    chrome

Search for Products
    Go To    https://www.amazon.com
    Wait Until Page Contains    Your Amazon.com
    Input Text    id=twotabsearchtextbox    Ferrari 458
    Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains    results for "Ferrari 458"

Select Product from Search Results
    Click Link    css=#result_0 a.s-access-detail-page
    Wait Until Page Contains    Back to search results

Add Product to Cart
    Click Button    id=add-to-cart-button
    Wait Until Page Contains    Added to Cart

Begin Checkout
    Click Link    Proceed to checkout (1 item)
    Page Should Contain Element    css:h1.a-spacing-small
    Element Text Should Be    css:h1.a-spacing-small    Sign in

End Web Test
    Close Browser
