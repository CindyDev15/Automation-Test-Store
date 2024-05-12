*** Settings ***
Documentation     Module1 - Shop page 
Library           SeleniumLibrary
Resource          ../resources/common.robot
Resource           ../resources/cart.robot
Test Teardown     Closing my browser
Test Setup        Opening my browser
Variables         ../variables/loginPage.robot

*** Variables ***


*** Test Cases ***
Change currency unit
    [Documentation]    Verify that page change currency true 
    Change currency unit    Change Euro and verify
    Change currency unit    Change Pound and verify
    Change currency unit    Change US dollar and 




        

    