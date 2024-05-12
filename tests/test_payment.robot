*** Settings ***
Documentation     Module1 - Shop page 
Library           SeleniumLibrary
Resource          ../resources/common.robot
Resource          ../resources/cart/cart.robot
Test Teardown     Closing my browser
Test Setup        Opening my browser
Resource          ../variables/login_page.robot

*** Variables ***


*** Test Cases ***

    