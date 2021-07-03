*** Settings ***
Resource         ../Front/resourceAcesso.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Cases ***
Caso 01: Criar um Cadastro
    Acessar a página home do site
    Clicar no botão de "Cadastrar"
    Preencher dados obrigatórios
    Clicar em "Cadastrar"

Caso 02: Realizar Login
    Acessar a página home do site
    Clicar no "Login"
    Digitar email, senha e clicar em "Login"    
    Página do Perfil
    Cadastrar Perfil

*** Keywords ***