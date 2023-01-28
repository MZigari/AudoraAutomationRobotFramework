*** Settings ***
Documentation    Cenários de testes relacionado ao cadastro na aplicação.
Resource    ../../src/config/package.resource


Test Setup    Abrir sessão
Test Teardown   Encerrar sessão

*** Test Cases ***
Cenario: cadastro na plataforma
    [Tags]    CADASTRO
    Dado que o cliente esteja na tela de Sign In
    E digitar o email na janela de create an account            ${MASSA_DADOS.CREATE.NOVO_EMAIL}
    E clicar no botao create an account
    Quando inserir os dados para cadastro      ${MASSA_DADOS.CREATE.FIRST_NAME}        ${MASSA_DADOS.CREATE.LAST_NAME}      ${MASSA_DADOS.CREATE.PASSWORD}         ${MASSA_DADOS.CREATE.SELECT_DAY_BIRTHDAY}       ${MASSA_DADOS.CREATE.SELECT_MONTH_BIRTHDAY}       ${MASSA_DADOS.CREATE.SELECT_YEAR_BIRTHDAY}      ${MASSA_DADOS.CREATE.FIRST_NAME_ADDRES}      ${MASSA_DADOS.CREATE.LAST_NAME_ADDRES}        ${MASSA_DADOS.CREATE.COMPANY}       ${MASSA_DADOS.CREATE.ADDRES}       ${MASSA_DADOS.CREATE.ADDRES_TWO}        ${MASSA_DADOS.CREATE.CITY}   ${MASSA_DADOS.CREATE.SELECT_STATE}     ${MASSA_DADOS.CREATE.ZIP}    ${MASSA_DADOS.CREATE.SELECT_COUNTRY}    ${MASSA_DADOS.CREATE.ADD_INFO}       ${MASSA_DADOS.CREATE.HOME_PHONE}      ${MASSA_DADOS.CREATE.MOBILE_PHONE}       ${MASSA_DADOS.CREATE.MY_ADDRESS}
    E clicar em register
    Então deve visualizar a tela Home