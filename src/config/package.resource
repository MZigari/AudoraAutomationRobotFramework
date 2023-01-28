*** Settings ***
Documentation     Dependências do projeto

#Dependencias
Library        SeleniumLibrary
Library        FakerLibrary

# Keywords
Resource       setup.robot
Resource       ../auto/keywords/home_kws.robot
Resource       ../auto/keywords/login_kws.robot
Resource       ../auto/keywords/minha_conta_kws.robot
Resource       ../auto/keywords/comum_kws.robot
Resource       ../auto/keywords/cadastro_kws.robot
Resource       ../auto/keywords/carrinho_kws.robot
Resource       ../auto/keywords/logout_kws.robot

#Elementos
Resource      ../auto/elements/home_ets.resource
Resource      ../auto/elements/login_ets.resource
Resource      ../auto/elements/minha_conta_ets.resource
Resource      ../auto/elements/cadastro_ets.resource
Resource      ../auto/elements/carrinho_ets.resource
Resource      ../auto/elements/logout_ets.resource

# Dados
Variables     ../auto/data/dados.yaml
