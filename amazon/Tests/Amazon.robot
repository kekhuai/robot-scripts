*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot

*** Variables ***
*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the suite
    [Tags]    Smoke

    Common.Begin Web Test
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
    Common.End Web Test
