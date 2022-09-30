*** Settings ***
Documentation        Inventory Page

Library    Browser

*** Keywords ***
Validate Access Inventory Page
    Get Text    css=.header_secondary_container > span    contains    PRODUCTS