*** Settings ***
Documentation     Functions for the test cases
Library           SeleniumLibrary
Library           BuiltIn
Library           OperatingSystem
Library           Collections
Library           String
Resource          ../../resources/common.robot

*** Keywords ***
Update add valid quantity 
    Click Element    xpath=//*[@id="block_frame_featured_1769"]/div/div[1]/div[2]/div[3]/a/i
    Sleep    2s
    Click Element    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price[1:].replace(",", "")}
    Input Text    //*[@id="cart_quantity50"]    10
    Click Element    xpath=//*[@id="cart_update"]
    Sleep    2s
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price[1:].replace(",", "")}
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    ${update_quantity_distance}    Get Element Attribute    //*[@id="cart_quantity50"]    value
    ${update_quantity_distance}    Evaluate    int(${update_quantity_distance}) - int(${quantity})
    ${item_price}    Get Text    xpath=//*[@id="cart"]/div/div[1]/table/tbody/tr[2]/td[4]
    ${item_price}    Set Variable    ${item_price[1:].replace(",", "")}
    ${item_price}    Evaluate    float(float(${item_price}) * int(${update_quantity_distance}))
    Should Be Equal As Numbers    ${distance_quantity}    ${update_quantity_distance}
    Should Be Equal As Numbers    ${distance_price}    ${item_price}