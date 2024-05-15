*** Settings ***
Documentation     Module1 - Shop page
Test Setup        Opening my browser
Test Teardown     Closing my browser
Library           SeleniumLibrary
Resource          ../../resources/common.robot
Resource          ../../resources/cart/updatecart.robot

*** Test Cases ***
Update add valid quantity 
    Update add valid quantity 

Update remove valid quantity 
    Update remove valid quantity 

Update zero quantity 
    Update zero quantity 

Update not a number quantity 
    Update not a number quantity 

Update negative quantity
    Update negative quantity

Update exceed in stock quantity 
    Update exceed in stock quantity 

Update minium quantity 
    Update minium quantity 

Update remove item
    Update remove item

Update no change quantity 
    Update no change quantity 



*** Settings ***
Library           SeleniumLibrary
Library           Collections
Library           RequestsLibrary
Library           BuiltIn
Library           String

*** Variables ***
${URL}            https://automationteststore.com/

*** Test Cases ***
Item Shoes
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //html/body/div/header/div[1]/div/div[1]/a/img
    #Sản phẩm thứ 1
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[2]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Apparel & accessories')]
    Click Element    xpath=//*[@id="maincontainer"]/div/div/div/div/ul/li[1]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Shoes')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[2]/div[4]/div[2]/a/img
    Sleep    2s
    Click Element    //*[@id="product"]/fieldset/div[1]/div
    Select From List By Value    //*[@id="option342"]    743
    Sleep    2s
    Input Text    xpath=//*[@id="product_quantity"]    2
    Sleep    5s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[3]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[5]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    2
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    ###########################################
    #Sản phẩm thứ 2
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[2]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Apparel & accessories')]
    Click Element    xpath=//*[@id="maincontainer"]/div/div/div/div/ul/li[1]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Shoes')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[2]/div[1]/div[2]/a/img
    Sleep    2s
    Click Element    //*[@id="option344749"]
    Sleep    2s
    Input Text    xpath=//*[@id="product_quantity"]    3
    Sleep    5s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[4]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[6]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    3
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    Close Browser

Item APPAREL & ACCESSORIES Valid 2 Item
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //html/body/div/header/div[1]/div/div[1]/a/img
    #Sản phẩm thứ 1
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[2]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Apparel & accessories')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[2]/div[9]/div[2]/a/img
    Sleep    2s
    Click Element    //*[@id="product"]/fieldset/div[1]/div
    Select From List By Value    //*[@id="option342"]    743
    Sleep    2s
    Input Text    xpath=//*[@id="product_quantity"]    2
    Sleep    5s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[3]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[5]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    2
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    ###########################################
    #Sản phẩm thứ 2
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[2]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Apparel & accessories')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[2]/div[6]/div[2]/a/img
    Sleep    2s
    Input Text    xpath=//*[@id="product_quantity"]    2
    Sleep    5s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[4]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[6]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    2
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    Close Browser

Item MAKEUP Frist Valid Second Invalid
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //html/body/div/header/div[1]/div/div[1]/a/img
    #Sản phẩm thứ 1
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[3]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Makeup')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[3]/div[2]/div[2]/a/img
    Sleep    2s
    Click Element    //*[@id="product"]/fieldset/div[1]/div
    Select From List By Value    //*[@id="option318"]    652
    Sleep    2s
    Input Text    xpath=//*[@id="product_quantity"]    4
    Sleep    5s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[3]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[5]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    4
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    ###########################################
    #Sản phẩm thứ 2
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[3]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Makeup')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[3]/div[7]/div[2]/a/img
    Sleep    2s
    Click Element    //*[@id="product"]/fieldset/div[1]/div
    Select From List By Value    //*[@id="option305"]    617
    Sleep    2s
    Input Text    xpath=//*[@id="product_quantity"]    0
    Sleep    5s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[3]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[5]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    0
    Should Be Equal As Numbers    ${distance_price}    0
    Close Browser

Item SKIN-CARE Frist Invalid Second Valid
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //html/body/div/header/div[1]/div/div[1]/a/img
    #Sản phẩm thứ 1
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[4]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Skincare')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[3]/div[2]/div[2]/a/img
    Sleep    2s
    Input Text    xpath=//*[@id="product_quantity"]    0
    Sleep    5s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[2]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[4]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    0
    Should Be Equal As Numbers    ${distance_price}    0
    ###########################################
    #Sản phẩm thứ 2
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[4]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Skincare')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[3]/div[3]/div[2]/div[3]/a
    Sleep    2s
    ${item_price}    Get Text    xpath=//*[@id="maincontainer"]/div/div/div/div/div[3]/div[3]/div[2]/div[3]/div[2]/div[1]
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    1
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    Close Browser

Item Fragrance 2 Item Invalid
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //html/body/div/header/div[1]/div/div[1]/a/img
    #Sản phẩm thứ 1
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[5]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Fragrance')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[3]/div[2]/div[2]/a/img
    Sleep    2s
    Click Element    //*[@id="product"]/fieldset/div[1]/div
    Select From List By Value    //*[@id="option330"]    691
    Sleep    2s
    Input Text    xpath=//*[@id="product_quantity"]    0
    Sleep    5s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[3]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[5]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    0
    Should Be Equal As Numbers    ${distance_price}    0
    ###########################################
    #Sản phẩm thứ 2
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[5]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Fragrance')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[3]/div[8]/div[2]/a/img
    Sleep    2s
    Click Element    //*[@id="product"]/fieldset/div[1]/div
    Select From List By Value    //*[@id="option322"]    668
    Sleep    2s
    Input Text    xpath=//*[@id="product_quantity"]    0
    Sleep    5s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[3]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[5]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    0
    Should Be Equal As Numbers    ${distance_price}    0
    Close Browser

Item MEN 1 Item Quantity Exceed 1 Valid
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //html/body/div/header/div[1]/div/div[1]/a/img
    #Sản phẩm thứ 1
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[6]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Men')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price[1:].replace(",", "")}
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[2]/div[1]/div[2]/a/img
    Sleep    2s
    Click Element    //*[@id="product"]/fieldset/div[1]/div
    Select From List By Value    //*[@id="option320"]    661
    Sleep    5s
    Input Text    xpath=//*[@id="product_quantity"]    143
    Sleep    15s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[3]/label/span
    ${item_price}    Set Variable    ${item_price[1:].replace(",", "")}
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[5]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price[1:].replace(",", "")}
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    143
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/div/strong[contains(text(),'Products marked with *** are not available in the desired quantity or out of stock!')]
    ###########################################
    #Sản phẩm thứ 2
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[6]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Men')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price[1:].replace(",", "")}
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[2]/div[3]/div[2]/div[3]/a
    Sleep    2s
    ${item_price}    Get Text    xpath=//*[@id="maincontainer"]/div/div/div/div/div[2]/div[3]/div[2]/div[3]/div[2]/div
    ${item_price}    Set Variable    ${item_price[1:].replace(",", "")}
    ${item_price}    Evaluate    float(${item_price})
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price[1:].replace(",", "")}
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    1
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    Close Browser

Item BOOKS 1 Item Quantity Not Enough 1 Valid
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //html/body/div/header/div[1]/div/div[1]/a/img
    #Sản phẩm thứ 1
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[8]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Books')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price[1:].replace(",", "")}
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[3]/div[1]/div[2]/a/img
    Sleep    2s
    Click Element    //*[@id="product"]/fieldset/div[1]/div
    Input Text    xpath=//*[@id="product_quantity"]    10
    Sleep    2s
    Click Element    xpath=//*[@id="product"]/fieldset/div[4]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/div/strong[contains(text(),'Products marked with *** are not available in the desired quantity or out of stock!')]
    ${item_price}    Get Text    xpath=//*[@id="cart"]/div/div[1]/table/tbody/tr[2]/td[6]
    ${item_price}    Set Variable    ${item_price[1:].replace(",", "")}
    ${item_price}    Evaluate    float(${item_price})
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price[1:].replace(",", "")}
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    1000000
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    ###########################################
    #Sản phẩm thứ 2
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[8]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Books')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price[1:].replace(",", "")}
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[3]/div[4]/div[2]/div[3]/a/i
    Sleep    2s
    ${item_price}    Get Text    xpath=//*[@id="maincontainer"]/div/div/div/div/div[3]/div[4]/div[2]/div[3]/div[2]/div
    ${item_price}    Set Variable    ${item_price[1:].replace(",", "")}
    ${item_price}    Evaluate    float(${item_price})
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price[1:].replace(",", "")}
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    1
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    Close Browser

Item HAIR-CARE 2 Item Valid With No Detail
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //html/body/div/header/div[1]/div/div[1]/a/img
    #Sản phẩm thứ 1
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[7]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Hair Care')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price[1:].replace(",", "")}
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[3]/div[2]/div[2]/div[3]/a/i
    Sleep    2s
    ${item_price}    Get Text    xpath=//*[@id="maincontainer"]/div/div/div/div/div[3]/div[2]/div[2]/div[3]/div[2]/div
    ${item_price}    Set Variable    ${item_price[1:].replace(",", "")}
    ${item_price}    Evaluate    float(${item_price})
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price[1:].replace(",", "")}
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    1
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    ###########################################
    #Sản phẩm thứ 2
    Click Element    xpath=//*[@id="categorymenu"]/nav/ul/li[7]/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div/div/h1/span[1][contains(text(),'Hair Care')]
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price[1:].replace(",", "")}
    Click Element    //*[@id="maincontainer"]/div/div/div/div/div[3]/div[3]/div[2]/div[3]/a/i
    Sleep    2s
    ${item_price}    Get Text    xpath=//*[@id="maincontainer"]/div/div/div/div/div[3]/div[3]/div[2]/div[3]/div[2]/div
    ${item_price}    Set Variable    ${item_price[1:].replace(",", "")}
    ${item_price}    Evaluate    float(${item_price})
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price[1:].replace(",", "")}
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    1
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    Close Browser
