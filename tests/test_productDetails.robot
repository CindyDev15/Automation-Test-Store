*** Settings ***
Documentation     Module1 - Shop page 
Library           SeleniumLibrary
Resource          ../resources/common.robot
Resource           ../resources/productDetails/productDetails.robot
Test Teardown     Closing my browser
Test Setup        Opening my browser

*** Variables ***
${BROWSER}        Chrome
${URL_SITEMAP}      https://automationteststore.com/index.php?rt=content/sitemap  

*** Test Cases ***



    