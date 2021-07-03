*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${URL}        https://conexaoqa.herokuapp.com/


*** Keywords ***

### Setup e Teardown ###
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}


Fechar navegador
    Close Browser


### Ações ###

Acessar a página home do site
    Wait Until Element Is Visible    xpath=//*[@id="root"]//a[@data-test='navbar-conexaoQA']
    Title Should Be                  ConexaoQA 

Clicar no botão de "${CADASTRAR}"
    Wait Until Element Is Visible    xpath=//*[@id="root"]//a[@data-test='navbar-conexaoQA']
    Title Should Be                  ConexaoQA 
    Click Element                    xpath=//*[@id="root"]//a[@data-test='landing-register'] 

Preencher dados obrigatórios
    Wait Until Element Is Visible    xpath=//*[@id="root"]//*[@class='large text-primary']
    Title Should Be                  ConexaoQA
    Input Text                       name=name                                                                Gislaine
    Input Text                       name=email                                                               kow2.oliveira@gmail.com
    Input Text                       name=password                                                            123456
    Input Text                       name=password2                                                           123456                     
    Element Should Be Visible        xpath=//*[@id="root"]//a[@data-test='register-login'][@href='/login']

Clicar em "${CADASTRAR}"
    Click Element    xpath=//*[@id="root"]//*[@data-test='register-submit']



Clicar no "${LOGIN}"
    Wait Until Element Is Visible    xpath=//*[@id="root"]//a[@data-test='navbar-conexaoQA']
    Title Should Be                  ConexaoQA
    Click Element                    xpath=//*[@id="root"]//*[@data-test='landing-login'] 


Digitar email, senha e clicar em "${LOGIN}"
    Wait Until Element Is Visible    xpath=//*[@id="root"]//*[@class='large text-primary']
    Title Should Be                  ConexaoQA
    Input Text                       name=email                                                                   kow2.oliveira@gmail.com
    Input Text                       name=password                                                                123456
    Element Should Be Visible        xpath=//*[@id="root"]//a[@data-test='login-register'][@href='/cadastrar']
    Click Element                    xpath=//*[@id="root"]//*[@data-test='login-submit']


Página do Perfil
    Go To                            https://conexaoqa.herokuapp.com/dashboard
    Wait Until Element Is Enabled    xpath=//*[@id="root"]//*[@class='large text-primary']
    Title Should Be                  ConexaoQA
    Click Element                    xpath=//*[@id="root"]//*[@data-test='dashboard-createProfile']


Cadastrar Perfil
    Go To                            https://conexaoqa.herokuapp.com/criar-perfil
    Wait Until Element Is Enabled    xpath=//*[@id="root"]//*[@class='large text-primary']
    Title Should Be                  ConexaoQA
    Click Element                    xpath=//*[@id="root"]//*[@data-test='profile-status']
    Scroll Element Into View         xpath=//*[@id="menu-status"]//*[@data-test='status-2'][@data-value='QA Pleno']    
    Click Element                    xpath=//*[@id="menu-status"]//*[@data-test='status-2'][@data-value='QA Pleno']
    Input Text                       name=company                                                                      LogComex
    Input Text                       name=website                                                                      https://www.logcomex.com/
    Input Text                       name=location                                                                     Curitiba
    Input Text                       name=skills                                                                       Testes Manuais, Testes de Integração, Automação de Testes, Robot, Testes de API, Postman
    Input Text                       name=githubusername                                                               https://github.com/KiraOliveira
    Input Text                       name=bio                                                                          Mais conhecida como Kira, adoro tecnologia, leitura, caminhada e qualidade. Estou na área a uns 4 anos e estudo atualmente automação de testes com Robot.
    Click Element                    xpath=//*[@id="root"]//*[@data-test='profile-socials']
    Input Text                       name=linkedin                                                                     https://www.linkedin.com/in/gislaine-oliveira/
    Click Element                    xpath=//*[@id="root"]//*[@data-test='profile-submit']


























