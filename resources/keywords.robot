*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot
Resource   locators.robot

*** Keywords ***

Open SauceDemo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login To SauceDemo
    Input Text      ${USERNAME_TXT}    ${USERNAME}
    Input Password  ${PASSWORD_TXT}    ${PASSWORD}
    Click Button    ${LOGIN_BTN}

Verify Products Page
    Wait Until Element Is Visible    ${PRODUCTS_TITLE}
    Element Text Should Be           ${PRODUCTS_TITLE}    Products

Add Backpack To Cart
    Click Button    ${BACKPACK_BTN}

Open Cart
    Click Element   ${CART_ICON}

Checkout
    Click Button    ${CHECKOUT_BTN}
    Input Text      ${FIRSTNAME}    John
    Input Text      ${LASTNAME}     Doe
    Input Text      ${ZIPCODE}      12345
    Click Button    ${CONTINUE_BTN}


Logout
    Click Element    ${MENU_BTN}

    Wait Until Element Is Visible    ${LOGOUT_BTN}    10s
    Wait Until Element Is Enabled    ${LOGOUT_BTN}    10s

    Click Element    ${LOGOUT_BTN}
    