*** Settings ***
Documentation     Module1 - Homepage
Test Setup        Opening my browser
Test Teardown     Closing my browser
Library           SeleniumLibrary
Resource          ../resources/common.robot
Resource          ../resources/nhonho.robot

*** Test Cases ***
Change usd to euro to pound to usd
    Change usd to euro to pound to usd
