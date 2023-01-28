*** Settings ***
Documentation    Cenários de testes relacionados ao login da aplicação.

Resource    ../../src/config/package.resource

Test Setup    Abrir sessão
Test Teardown   Encerrar sessão

*** Test Cases ***
Cenario: Login com sucesso
    [Tags]    LOGIN      POSITIVO
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando inserir os dados de login       ${MASSA_DADOS.LOGIN.EMAIL}     ${MASSA_DADOS.LOGIN.SENHA}
    E clicar no elemento       ${LOGIN.BOTAO_SIGNIN}
    Então deve visualizar a tela My Account

Cenario: Login com credenciais inválidas
    [Tags]      LOGIN     NEGATIVO
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando inserir os dados de login         ${MASSA_DADOS.LOGIN_INVALIDO.EMAIL}      ${MASSA_DADOS.LOGIN_INVALIDO.SENHA}
    E clicar no elemento       ${LOGIN.BOTAO_SIGNIN}
    Então deve visualizar a mensagem      ${LOGIN.TEXTO_ERRO}     Authentication failed.
