*** Settings ***
Documentation     Functions for the test cases
Library           SeleniumLibrary
Library           BuiltIn
Library           OperatingSystem
Library           Collections
Library           String
Resource          ../../resources/common.robot

*** Keywords ***
Add to cart from homepage featured
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    xpath=//*[@id="block_frame_featured_1769"]/div/div[1]/div[2]/div[3]/a/i
    Page Should Contain Element    xpath=//*[@id="block_frame_featured_1769"]/div/div[1]/div[2]/div[3]/div[1]/a/i
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    ${item_price}    Get Text    xpath=//*[@id="block_frame_featured_1769"]/div/div[1]/div[2]/div[3]/div[2]/div
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Should Be Equal As Numbers    ${distance_quantity}    1
    Should Be Equal As Numbers    ${distance_price}    ${item_price}

Add to cart from homepage latest products
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    xpath=//*[@id="block_frame_latest_1770"]/div/div[1]/div[2]/div[3]/a/i
    Page Should Contain Element    xpath=/html/body/div/div[2]/div/div/section[3]/div/div/div/div[1]/div[2]/div[3]/div[1]/a/i
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    ${item_price}    Get Text    xpath=//*[@id="block_frame_latest_1770"]/div/div[1]/div[2]/div[3]/div[2]/div
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Should Be Equal As Numbers    ${distance_quantity}    1
    Should Be Equal As Numbers    ${distance_price}    ${item_price}

Add to cart from homepage bestsellers   
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    xpath=//*[@id="block_frame_bestsellers_1771"]/div/div[4]/div[2]/div[3]/a/i
    Page Should Contain Element    xpath=/html/body/div/div[2]/div/div/section[4]/div/div/div/div[4]/div[2]/div[3]/div[1]/a/i
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    ${item_price}    Get Text    xpath=//*[@id="block_frame_bestsellers_1771"]/div/div[4]/div[2]/div[3]/div[2]/div[1]
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Should Be Equal As Numbers    ${distance_quantity}    1
    Should Be Equal As Numbers    ${distance_price}    ${item_price}

Add to cart from homepage specials
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    xpath=/html/body/div/div[2]/div/div/section[5]/div/div/div/div[4]/div[2]/div[3]/a
    Page Should Contain Element    xpath=/html/body/div/div[2]/div/div/section[5]/div/div/div/div[4]/div[2]/div[3]/div[1]/a/i
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    ${item_price}    Get Text    xpath=/html/body/div/div[2]/div/div/section[5]/div/div/div/div[4]/div[2]/div[3]/div[2]/div[1]
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Should Be Equal As Numbers    ${distance_quantity}    1
    Should Be Equal As Numbers    ${distance_price}    ${item_price}

Add to cart from homepage featured has minimum
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price[1:].replace(",", "")}
    Click Element    //*[@id="block_frame_featured_1769"]/div/div[3]/div[2]/a/img
    Input Text    xpath=//*[@id="product_quantity"]    1
    Sleep    1s
    Click Element    xpath=//*[@id="product"]/fieldset/div[4]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    Wait Until Page Contains Element    xpath=//*[@id="maincontainer"]/div/div/div/div/strong[contains(text(),"Allowed product's quantity is below minimum required. Quantity was set to minimum amount.")]
    ${item_price}    Get Text    xpath=//*[@id="cart"]/div/div[1]/table/tbody/tr[2]/td[6]
    ${item_price}    Set Variable    ${item_price[1:].replace(",", "")}
    ${item_price}    Evaluate    float(${item_price})
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price}    Set Variable    ${update_price[1:].replace(",", "")}
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    2
    Should Be Equal As Numbers    ${distance_price}    ${item_price}

Add to cart from homepage specials product with 2 product
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="block_frame_special_1772"]/div/div[1]/div[2]/a/img
    Input Text    xpath=//*[@id="product_quantity"]    2
    Wait Until Element Is Enabled    xpath=//*[@id="product"]/fieldset/div[2]/label/span
    Sleep    1s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[2]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[4]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price1}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price1}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    2
    Should Be Equal As Numbers    ${distance_price}    ${item_price}
    Page Should Contain Element    xpath=/html/body/div/div[2]/div/div/div/form/div/div[1]/table/tbody
    ${total_cart}    Get Text    xpath=/html/body/div/div[2]/div/div/div/form/div/div[1]/table/tbody/tr[2]/td[6]
    Should Be Equal As Strings    ${total_cart}    ${update_price}

Add to cart from homepage specials product with quanlity 0
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="block_frame_special_1772"]/div/div[1]/div[2]/a/img
    Input Text    xpath=//*[@id="product_quantity"]    0
    Sleep    1s
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
    Page Should Contain Element    xpath=/html/body/div/div[2]/div/div/div/div

Add to cart from homepage specials product with not a number
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="block_frame_spcial_1772"]/div/div[1]/div[2]/a/img
    Input Text    xpath=//*[@id="product_quantity"]    abcde
    Sleep    1s
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
    Page Should Contain Element    xpath=/html/body/div/div[2]/div/div/div/div

Add to cart from homepage specials product with a negative number
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="block_frame_special_1772"]/div/div[1]/div[2]/a/img
    Input Text    xpath=//*[@id="product_quantity"]    -5
    Sleep    1s
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
    Page Should Contain Element    xpath=/html/body/div/div[2]/div/div/div/div

Add to cart from homepage bestsellers product choose options
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="block_frame_bestsellers_1771"]/div/div[2]/div[2]/a/img
    ${color}    Get Text    xpath=//*[@id="product"]/fieldset/div[1]/div/label[3]
    ${color}    Evaluate    '${color}'.replace(' ', '')
    Click Element    xpath=//*[@id="product"]/fieldset/div[1]/div/label[3]
    Sleep    1s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[3]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[5]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price1}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price1}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    1
    Should Be Equal As Numbers    ${distance_price}    ${update_price1}
    Page Should Contain Element    xpath=/html/body/div/div[2]/div/div/div/form/div/div[1]/table/tbody
    ${total_cart}    Get Text    xpath=/html/body/div/div[2]/div/div/div/form/div/div[1]/table/tbody/tr[2]/td[6]
    Should Be Equal As Strings    ${total_cart}    ${update_price}
    ${colour_text}    Get Text    xpath=/html/body/div/div[2]/div/div/div/form/div/div[1]/table/tbody/tr[2]/td[2]/div/small
    ${colour_value}    Evaluate    '${colour_text}'.replace('Colour ', '').replace(' ', '')
    Should Be Equal As Strings    ${color}    ${colour_value}

Add to cart from homepage specials product select dropdown
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="block_frame_featured_1769"]/div/div[4]/div[2]/a/img
    Input Text    xpath=//*[@id="product_quantity"]    2
    Select From List By Value    //*[@id="option318"]    652
    ${colour}    Get Text    xpath=/html/body/div/div[2]/div/div[2]/div/div[1]/div/div[2]/div/div/div[2]/form/fieldset/div[1]/div/select/option[2]
    ${colour}    Evaluate    '${colour}'.replace(' ', '')
    Sleep    1s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[3]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[5]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price1}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price1}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    2
    Should Be Equal As Numbers    ${distance_price}    ${update_price1}
    Page Should Contain Element    xpath=/html/body/div/div[2]/div/div/div/form/div/div[1]/table/tbody
    ${total_cart}    Get Text    xpath=/html/body/div/div[2]/div/div/div/form/div/div[1]/table/tbody/tr[2]/td[6]
    Should Be Equal As Strings    ${total_cart}    ${update_price}
    ${colour_text}    Get Text    xpath=/html/body/div/div[2]/div/div/div/form/div/div[1]/table/tbody/tr[2]/td[2]/div/small
    ${colour_value}    Evaluate    '${colour_text}'.replace('Color ', '').replace(' ', '')
    Should Be Equal As Strings    ${colour}    ${colour_value}

Add to cart from homepage bestsellers product out of stock
    ${quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${price}    Set Variable    ${price}[1:]
    Click Element    //*[@id="block_frame_bestsellers_1771"]/div/div[1]/div[2]/a/img
    Input Text    xpath=//*[@id="product_quantity"]    2
    Sleep    1s
    ${item_price}    Get Text    xpath=//*[@id="product"]/fieldset/div[3]/label/span
    ${item_price}    Set Variable    ${item_price}[1:]
    ${item_price}    Evaluate    float(${item_price})
    Click Element    xpath=//*[@id="product"]/fieldset/div[6]/ul/li/a
    Wait Until Page Contains Element    //*[@id="maincontainer"]/div/div[1]/div/h1/span[1][contains(text(),' Shopping Cart')]
    ${update_quantity}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[1]
    ${update_price}    Get Text    xpath=/html/body/div/header/div[2]/div/div[3]/ul/li/a/span[2]
    ${update_price1}    Set Variable    ${update_price}[1:]
    ${distance_quantity}    Evaluate    int(${update_quantity}) - int(${quantity})
    ${distance_price}    Evaluate    float(${update_price1}) - float(${price})
    Should Be Equal As Numbers    ${distance_quantity}    2
    Should Be Equal As Numbers    ${distance_price}    ${update_price1}

Check out of stock
    Wait Until Page Contains Element    //html/body/div/header/div[1]/div/div[1]/a/img
    ${out_of_stock}    Get Text    xpath=//*[@id="block_frame_featured_1769"]/div/div[2]/div[2]/div[3]/span
    Should Be Equal As Strings    ${out_of_stock}    OUT OF STOCK
    Click Element    xpath=/html/body/div/div[2]/div/div/section[2]/div/div/div/div[2]/div[2]/a/img
    ${out_of_stock1}    Get Text    xpath=/html/body/div/div[2]/div/div[2]/div/div[1]/div/div[2]/div/div/div[2]/form/fieldset/div[4]/ul/li/span
    Should Be Equal As Strings    ${out_of_stock1}    Out of Stock

