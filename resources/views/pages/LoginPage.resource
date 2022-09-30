*** Settings ***
Documentation        Login Page

Library    Browser

*** Keywords ***
Go To Home Page
    New Browser    headless=false
    New Page    https://www.saucedemo.com/

Submit Credentials
    [Arguments]    ${username}    ${password}
    
    Fill Text    input[placeholder='Username']    ${username}
    Fill Text    input[placeholder='Password']    ${password}
    Click        input[type='submit']