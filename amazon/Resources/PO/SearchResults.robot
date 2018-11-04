*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains    results for "Ferrari 458"

Click Product Link
    Click Link    css=#result_0 a.s-access-detail-page
