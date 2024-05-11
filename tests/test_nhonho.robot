*** Settings ***
Documentation     Module1 - Shop page 
Library           SeleniumLibrary
Resource          ../resources/common.robot
Resource           ../resources/nhonho.robot
Test Teardown     Closing my browser
Test Setup        Opening my browser

*** Variables ***


*** Test Cases ***

    