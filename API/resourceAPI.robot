*** Settings ***
Documentation    https://conexaoqa.herokuapp.com/api-docs/#/
Library          RequestsLibrary
Library          Collections


*** Variables ***
${CADASTRO}    https://conexaoqa.herokuapp.com/api/
&{DADOS}       name=GislaineOliveira1
...            email=gislaine2@exemplo.com
...            password=123456


${ACESSO}          https://conexaoqa.herokuapp.com/api/
${DADOS_ACESSO}    email=gih1@exemplo.com
...                password=123456


${PERFIL}          https://conexaoqa.herokuapp.com/api/ 
${DADOS_PERFIL}    company=LogComex
...                status=QA Pleno
...                location=Curitiba
...                skills=Teste API, Testes Manuais, Regressão, Robot Framework
...                bio=Sou Gislaine, mais conhecida como Kira.


*** Keywords ***
### Setup e Teardows
Conectar a minha API
    Create Session        conexaoQA            ${CADASTRO} 
    ${HEADERS}            Create Dictionary    content-type=application/json
    Set Suite Variable    ${HEADERS}


  ### Ações ###
Cadastrar Usuário
    ${RESPOSTA}          Post On Session                                                                              conexaoQA    users
    ...                  data={"name": "GislaineOliveira1","email": "gislaine2@exemplo.com","password": "123456"} 
    ...                  headers=${HEADERS}                                                                           
    Log                  ${RESPOSTA.text} 
    Set Test Variable    ${RESPOSTA}


Login de Usuário
    ${RESPOSTA}          Post On Session                                             conexaoQA    auth
    ...                  data={"email": "gih1@exemplo.com", "password": "123456"}
    ...                  headers=${HEADERS}
    Log                  ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}


Cadastrar perfil do Usuário
    ${RESPOSTA}          Post On Session                                                                                                                                                                                   conexaoQA    profile
    ...                  data={"company": "LogComex", "status": "QA Pleno", "location": "Curitiba", "skills": "Teste API, Testes Manuais, Regressão, Robot Framework", "bio": "Sou Gislaine, mais conhecida como Kira"}
    ...                  headers=${HEADERS}
    Log                  ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}

Listar perfis
    ${RESPOSTA}          Get on Session        conexaoQA    profile
    ...                  headers=${HEADERS}
    Log                  ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}

Listar rep GitHub
    ${RESPOSTA}          Get on Session        conexaoQA    profile/github/KiraOliveira
    ...                  headers=${HEADERS}
    Log                  ${RESPOSTA.text}      
    Set Test Variable    ${RESPOSTA}

### Conferências ###
Conferir o status code
    [Arguments]                   ${STATUSCODE_DES}
    Should Be Equal As Strings    ${RESPOSTA.status_code}    ${STATUSCODE_DES}

