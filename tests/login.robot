*** Settings ***
Resource    ../resources/variables.robot
Resource    ../resources/locators.robot
Resource    ../resources/keywords.robot

*** Test Cases ***

Login Test
    Open SauceDemo
    Login To SauceDemo
    Verify Products Page
    Close Browser

Add Product Test
    Open SauceDemo
    Login To SauceDemo
    Add Backpack To Cart
    Open Cart
    Page Should Contain    Swag Labs
    Close Browser

Checkout Product Test
    Open SauceDemo
    Login To SauceDemo
    Add Backpack To Cart
    Open Cart
    Checkout
    Page Should Contain    Swag Labs
    Close Browser

Logout Test
    Open SauceDemo
    Login To SauceDemo
    Logout
    Page Should Contain Element    ${LOGIN_BTN}
    Close Browser