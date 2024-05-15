*** Settings ***
Documentation     Functions for the test cases
Library           SeleniumLibrary
Library           BuiltIn
Library           OperatingSystem
Library           Collections
Library           String
Resource          ../resources/common.robot

*** Variables ***
${currency_dropdown_xpath}    xpath=/html/body/div/header/div[2]/div/div[2]

*** Keywords ***
Change usd to euro to pound to usd
    Click Element    xpath=//*[@id="block_frame_featured_1769"]/div/div[1]/div[2]/div[3]/a/i
    Click Element    xpath=//*[@id="block_frame_featured_1769"]/div/div[1]/div[2]/div[3]/a/i
    Click Element    xpath=//*[@id="block_frame_featured_1769"]/div/div[1]/div[2]/div[3]/a/i
    Click Element    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price[1:].replace(",", "")}
    Input Text    //*[@id="cart_quantity50"]    2
    Click Element    xpath=//*[@id="cart_update"]
    Sleep    1s
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price1}    Set Variable    ${update_price[1:].replace(",", "")}
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price1}) - float(${price})
    ${update_quantity_distance}    Get Element Attribute    //*[@id="cart_quantity50"]    value
    ${update_quantity_distance}    Evaluate    int(${update_quantity_distance}) - int(${quantity})
    ${item_price}    Get Text    xpath=//*[@id="cart"]/div/div[1]/table/tbody/tr[2]/td[4]
    ${item_price}    Set Variable    ${item_price[1:].replace(",", "")}
    ${item_price}    Evaluate    float(float(${item_price}) * int(${update_quantity_distance}))
    Should Be Equal As Numbers    ${distance_quantity}    ${update_quantity_distance}
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
