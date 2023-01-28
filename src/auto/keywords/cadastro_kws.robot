*** Settings ***

Resource        ../../config/package.resource

*** Keywords ***
Dado que o cliente esteja na tela de Sign In
    Wait Until Element Is Visible       ${HOME.BOTAO_SIGNIN}
    Click Element                       ${HOME.BOTAO_SIGNIN}

E digitar o email na janela de create an account
    [Arguments]     ${NOVO_EMAIL}
#    ${EMAIL}    FakerLibrary.Email
    Input Text    ${CADASTRO.INPUT_EMAIL_CREATE}    ${NOVO_EMAIL}
#    Input Text    ${EMAILFAKE}    ${EMAIL}


E clicar no botao create an account
    Click Element     ${CADASTRO.BOTAO_CREATE_ACCOUNT}
    Sleep    2



Quando inserir os dados para cadastro
    [Arguments]  ${FIRST_NAME}  ${LAST_NAME}    ${PASSWORD}     ${DAY_BIRTHDAY}    ${MONTH_BIRTHDAY}  ${YEAR_BIRTHDAY}   ${FIRST_NAME_ADDRES}  ${LAST_NAME_ADDRES}   ${COMPANY}  ${ADDRES}     ${ADDRES_TWO}    ${CITY}  ${STATE}   ${ZIP}   ${COUNTRY}    ${ADD_INFO}   ${HOME_PHONE}   ${MOBILE_PHONE}     ${MY_ADDRESS}
    Click Element    ${CADASTRO.BOTAO_TITLE}
    Input Text    ${CADASTRO.INPUT_FIRST_NAME}    ${FIRST_NAME}
    Input Text      ${CADASTRO.INPUT_LAST_NAME}     ${LAST_NAME}
    Input Text      ${CADASTRO.INPUT_PASSWORD}      ${PASSWORD}
    Select From List By Value   ${CADASTRO.SELECT_DAY_BIRTHDAY}   ${DAY_BIRTHDAY}
    Select From List By Value   ${CADASTRO.SELECT_MONTH_BIRTHDAY}     ${MONTH_BIRTHDAY}
    Select From List By Value   ${CADASTRO.SELECT_YEAR_BIRTHDAY}        ${YEAR_BIRTHDAY}
    Input Text      ${CADASTRO.INPUT_FIRST_NAME_ADDRES}     ${FIRST_NAME_ADDRES}
    Input Text      ${CADASTRO.INPUT_LAST_NAME_ADDRES}    ${LAST_NAME_ADDRES}
    Input Text      ${CADASTRO.INPUT_COMPANY}      ${COMPANY}
    Input Text      ${CADASTRO.INPUT_ADDRES}        ${ADDRES}
    Input Text    ${CADASTRO.INPUT_ADDRES_TWO}    ${ADDRES_TWO}
    Input Text      ${CADASTRO.INPUT_CITY}      ${CITY}
    Select From List By Value   ${CADASTRO.SELECT_STATE}     ${STATE}
    Input Text      ${CADASTRO.INPUT_ZIP}       ${ZIP}
    Select From List By Value   ${CADASTRO.SELECT_COUNTRY}     ${COUNTRY}
    Input Text      ${CADASTRO.INPUT_ADD_INFO}      ${ADD_INFO}
    Input Text      ${CADASTRO.INPUT_HOME_PHONE}           ${HOME_PHONE}
    Input Text      ${CADASTRO.INPUT_MOBILE_PHONE}         ${MOBILE_PHONE}
    Input Text      ${CADASTRO.INPUT_ADDRES_REFERENCE}     ${MY_ADDRESS}

E clicar em register
    Click Element   ${CADASTRO.BOTAO_REGISTER}

Então deve visualizar a tela Home
    Wait Until Element Is Visible       ${HOME.TITTLE}
