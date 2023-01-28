*** Settings ***

Resource        ../../config/package.resource

*** Keywords ***
Dado que o usuario esteja logado na aplicacao
    [Arguments]     ${EMAIL}    ${SENHA}
    Wait Until Element Is Visible       ${HOME.BOTAO_SIGNIN}
    Click Element                       ${HOME.BOTAO_SIGNIN}
    Input Text      ${LOGIN.INPUT_EMAIL}           ${EMAIL}
    Input Text      ${LOGIN.INPUT_SENHA}           ${SENHA}
    Click Element    ${LOGIN.BOTAO_SIGNIN}

E clicar na opcao women
    Click Element    ${CARRINHO.CLICK_WOMEN}

Quando clicar em add to cart
    Mouse Over    ${CARRINHO.ACTION_TSHIRT}
    Click Element    ${CARRINHO.CLICK_ADDCART}

Entao vera a mensagem de produto adicionado ao carrinho com sucesso
    Wait Until Element Is Visible    ${CARRINHO.TEXT_SUCESS}

E possua um produto no carrinho
    Click Element    ${CARRINHO.CLICK_WOMEN}
    Mouse Over    ${CARRINHO.ACTION_TSHIRT}
    Click Element    ${CARRINHO.CLICK_ADDCART}
    Sleep    1
    Click Element    ${CARRINHO.CLICK_CROSS}

Quando o usuario clicar no carrinho
    Click Element    ${CARRINHO.CLICK_CART}

E excluir o produto clicando na lixeira
    Click Element    ${CARRINHO.CLICK_LIXEIRA}

Entao deve excluir o produto com sucesso
    Wait Until Element Is Visible    ${CARRINHO.TEXT_CART_EMPTY}

