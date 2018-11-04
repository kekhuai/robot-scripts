*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

*** Variables ***
*** Test Cases ***
User can search for products
    [Documentation]    This is some basic info about the suite
    [Tags]    Smoke
    AmazonApp.Search for Products

User must sign in to check out
    [Documentation]    This is some basic info about the suite
    [Tags]    Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
