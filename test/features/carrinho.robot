*** Settings ***
Documentation    Cenários de testes adicionar e excluir produto do carrinho.

Resource    ../../src/config/package.resource

Test Setup    Abrir sessão
Test Teardown   Encerrar sessão

*** Test Cases ***
Cenario: Colocar produto no carrinho
    Dado que o usuario esteja logado na aplicacao    ${MASSA_DADOS.LOGIN.EMAIL}    ${MASSA_DADOS.LOGIN.SENHA}
    E clicar na opcao women
    Quando clicar em add to cart
    Entao vera a mensagem de produto adicionado ao carrinho com sucesso

Cenario: Excluir produto do carrinho
    Dado que o usuario esteja logado na aplicacao    ${MASSA_DADOS.LOGIN.EMAIL}    ${MASSA_DADOS.LOGIN.SENHA}
    E possua um produto no carrinho
    Quando o usuario clicar no carrinho
    E excluir o produto clicando na lixeira
    Entao deve excluir o produto com sucesso
