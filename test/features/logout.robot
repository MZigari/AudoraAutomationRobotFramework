*** Settings ***
Documentation    Cenários de testes relacionados ao logout da aplicação.

Resource    ../../src/config/package.resource

Test Setup    Abrir sessão
Test Teardown   Encerrar sessão

*** Test Cases ***
Cenario: Logout com sucesso
    Dado que o usuario esteja logado na aplicacao    ${MASSA_DADOS.LOGIN.EMAIL}    ${MASSA_DADOS.LOGIN.SENHA}
    Quando ele clicar em logout
    Entao deve ser deslogado do sistema com sucesso