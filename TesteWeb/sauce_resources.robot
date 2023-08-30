*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}                   https://www.saucedemo.com
${BROWSER}               Chrome
${area_login}            //div[@class='login_logo'][contains(.,'Swag Labs')]
${input_username}        //input[contains(@placeholder,'Username')]
${input_password}        //input[contains(@placeholder,'Password')]
${button_submit}         //input[contains(@type,'submit')]
${Backpack}              //button[contains(@data-test,'add-to-cart-sauce-labs-backpack')]
${button_add}            //button[contains(@data-test,'add-to-cart-sauce-labs-backpack')]
${button_cart}           //a[@class='shopping_cart_link'][contains(.,'1')]
${input_error}           //input[contains(@id,'user-name')]
${msg_error_user}        //h3[@data-test='error'][contains(.,'Epic sadface: Username and password do not match any user in this service')]
${input_password_error}  //input[contains(@id,'password')]

*** Keywords ***


Abrir o navegador
    Open Browser       ${url}      ${BROWSER}

Dado que estou na home Page SauceDemo
    Go To             url=${url}
    Wait Until Element Is Visible    locator=${area_login}

Quando inserir username e senha corretamente
    Input Text        ${input_username}        standard_user
    Input Text        ${input_password}        secret_sauce        

E clicar no botão de login então o site deverá logar corretamente
    Click Element     ${button_submit}

E deverá selecionar um produto para compra
    Wait Until Element Is Visible    locator=${Backpack}   
    Click Element     ${button_add} 

Então deverá conferir o produto no carrinho de compras
    Click Element     ${button_cart}
    Wait Until Page Contains    text=Your Cart 
    
Fechar o navegador
    Capture Page Screenshot
    Close Browser 

#teste user inválido


Quando inserir username inválido
     Input Text        ${input_error}         abcd_efg

E inserir senha válida
    Input Text        ${input_password}        secret_sauce 

E clicar no botão de login 
    Click Element     ${button_submit}

Então o site deverá informar que o login está inválido
    Wait Until Element Is Visible     locator=${msg_error_user}

#teste senha inválida

Quando inserir username válido
    Input Text        ${input_username}        standard_user

E inserir uma senha inválida
       Input Text        ${input_password_error}        abcd_efg 
       Click Element     ${button_submit}

Então o site deverá informar que a senha está inválida
    Wait Until Element Is Visible     locator=${msg_error_user}