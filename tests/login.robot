*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${URL}     https://www.saucedemo.com
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Login with valid credentials
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button   id=login-button
    Title Should Be    Swag Labs
    Sleep    3s
    Close Browser
