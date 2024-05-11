
*** Settings ***
Documentation     Functions for the test cases
Library           SeleniumLibrary
Library           BuiltIn
Library           OperatingSystem
Library           Collections
Library           String
Resource          ../resources/common.robot

*** Variables ***
${LOGIN_URL}       https://automationteststore.com/index.php?rt=account/login


*** Keywords ***

    