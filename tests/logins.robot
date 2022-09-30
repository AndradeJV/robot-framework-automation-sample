*** Settings ***
Documentation    Login tests

Resource    ../resources/main.resource

*** Variables ***
${username_required}    Epic sadface: Username is required
${password_required}    Epic sadface: Password is required
${username_incorrect}    Epic sadface: Username and password do not match any user in this service
${without_value}    ''


*** Test Cases ***
Should execute login with success
    Go To Home Page

    Submit Credentials    standard_user    secret_sauce
    Validate Access Inventory Page

    Take Screenshot


Try login with incorrect password and correct username
    Go To Home Page

    Submit Credentials    ${without_value}    secret_sauce
    Get Text    css=.error > h3    contains    ${username_incorrect}

    Take Screenshot

Try login with incorrect data
    Go To Home Page

    Submit Credentials    ${without_value}    ${without_value}
    Get Text    css=.error > h3    contains    ${username_incorrect}

    Take Screenshot