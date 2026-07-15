*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google
    Open Browser    https://www.google.com    chrome
    Title Should Contain    Google
    Close Browser