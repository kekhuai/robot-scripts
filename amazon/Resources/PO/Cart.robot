*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains    Added to Cart

Proceed to checkout
    Click Link    Proceed to checkout (1 item)
