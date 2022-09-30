*** Settings ***
Library    Browser


*** Test Cases ***
Deve validar a home page
    New Browser    headless=false
    New Page    https://www.saucedemo.com/
    Get Text    input[type='submit']    contains    Login
    Take Screenshot