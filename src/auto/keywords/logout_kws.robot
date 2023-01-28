*** Settings ***

Resource        ../../config/package.resource

*** Keywords ***

Quando ele clicar em logout
    Click Element    ${LOGOUT.CLICK_LOGOUT}

Entao deve ser deslogado do sistema com sucesso
    Wait Until Element Is Visible    ${LOGOUT.TEXT_LOGOUT}
