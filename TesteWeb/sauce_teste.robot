*** Settings ***
Documentation    Essa suite testa o site Saucedemo.com
Resource         sauce_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***

Caso de teste - 01 - Realizar Login e incluir item para compra
    [Documentation]    Esse teste valida o login seja feito corretamente no site Saucedemo.com
    [Tags]             realizar_login  
    Dado que estou na home Page SauceDemo
    Quando inserir username e senha corretamente
    E clicar no botão de login então o site deverá logar corretamente
    E deverá selecionar um produto para compra
    Então deverá conferir o produto no carrinho de compras

Caso de teste - 02 - Realizar Login com Username Invalido
    [Documentation]    Esse teste valida mensagem de erro no username
    Dado que estou na home Page SauceDemo
    Quando inserir username inválido
    E inserir senha válida
    E clicar no botão de login 
    Então o site deverá informar que o login está inválido

Caso de teste - 03 - Realizar Login com Senha Invalida
    [Documentation]     Esse teste valida mensagem de erro na senha
    Dado que estou na home Page SauceDemo
    Quando inserir username válido
    E inserir uma senha inválida
    Então o site deverá informar que a senha está inválida


    