*** Settings ***
Documentation  Arquivo principal de importação de todos os arquivos de recursos/resources (bibliotecas, keywords, pages objects e variáveis)

# Importando as bibliotecas de keywords
Library  SeleniumLibrary
Library  Collections
Library  String
Library  FakerLibrary  locale=pt_BR

# Importando os arquivos de variáveis de URL
Resource  ./environments/url_variables.resource
Resource  ./credentials/credentials.robot

# Importando os arquivos de variáveis de massa de dados
Resource  ./massa_dados/massa_dados.resource

# Importando os arquivos de keywords comuns
Resource  ./keywords_common/setup.robot
Resource  ./keywords_common/teardown.robot
Resource  ./keywords_common/kws_shared.robot

# Importando os arquivos de pages objects
Resource  ./page_objects/PO_login.resource
Resource  ./page_objects/PO_inventory.resource
Resource  ./page_objects/PO_cart.resource
Resource  ./page_objects/PO_checkout.resource

# Importando os arquivos de keywords
Resource  ./keywords/kws_sistema_vendas.resource