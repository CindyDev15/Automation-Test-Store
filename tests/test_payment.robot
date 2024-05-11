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

    