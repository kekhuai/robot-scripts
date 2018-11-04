*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    css:h1.a-spacing-small
    Element Text Should Be    css:h1.a-spacing-small    Sign in
