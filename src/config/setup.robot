*** Settings ***
Documentation    Configurações de inicialização e finalização dos testes.

*** Keywords ***
Abrir sessão
    # Abrir o navegador.
    Open Browser    http://automationtest.shop/       chrome
    Set Selenium Timeout    60
    # Maximizar o navegador
    Maximize Browser Window

Encerrar sessão
    Capture Page Screenshot
    Close Browser
