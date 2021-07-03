*** Settings ***
Documentation    https://conexaoqa.herokuapp.com/api-docs/#/
Resource         ../API/resourceAPI.robot
Suite Setup      Conectar a minha API


*** Test Cases ***
Cadastrar Usuário
    Cadastrar Usuário 
    Conferir o status code    201


Login
    Login de Usuário
    Conferir o status code    200    

Cadastrar Perfil
    Cadastrar perfil do Usuário
    Conferir o status code         200

