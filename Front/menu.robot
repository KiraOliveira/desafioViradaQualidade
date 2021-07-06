*** Settings ***
Resource         ../Front/resourceMenu.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Cases ***
Caso 01: Criar um Cadastro
    Acessar a página home do site
    Clicar no botão de "Cadastrar"
    Preencher dados obrigatórios
    Clicar em "Cadastrar"


#Caso 02: Validação Mensagem Usuário já registrado
#    Aessar a página home do site
#    Clicar no botão de "Cadastrar"
#    Preencher dados obrigatórios
#    Clicar em "Cadastrar"
#    Conferir Conferir mensagem "Usuário já registrado"


Caso 03: Realizar Login
    Acessar a página home do site
    Clicar no "Login"
    Digitar email, senha e clicar em "Login"    
    Página do Perfil
    Cadastrar Perfil


#Caso 04: Validar Mensagem de aviso "Credenciais inválidas"
#    Acessar a página home do site
#    Clicar no "Login"
#    Digitar email, senha e clicar em "Login"              
#    Conferir mensagem de aviso "Credenciais inválidas"    

Caso 05: Edição de Cadastro
    Acessar a página home do site
    Clicar no "Login"
    Digitar email, senha e clicar em "Login"    
    Acesso Perfil
    Editar Perfil



*** Keywords ***