*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
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
    Wait Until Page Contains Element    css:h1.a-spacing-small
    Element Text Should Be    css:h1.a-spacing-small    Sign in
