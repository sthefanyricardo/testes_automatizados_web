*** Settings ***
Documentation  Arquivo principal de importação de todos os arquivos de recursos/resources (bibliotecas, keywords, pages objects e variáveis)

# Importando as bibliotecas de keywords
Library  SeleniumLibrary
Library  Collections
Library  String
Library  DateTime
Library  FakerLibrary  locale=pt_BR

# Importando os arquivos de variáveis de URL
Resource  ./credentials/credentials.resource

# Importando os arquivos de variáveis de massa de dados
Resource  ./massa_dados/massa_dados.resource

# Importando os arquivos de keywords comuns
Resource  ./keywords_common/setup.resource
Resource  ./keywords_common/teardown.resource

# Importando os arquivos de variáveis de URL
Resource  ./environments/url_variables.resource

# Importando os arquivos de pages objects
Resource  ./page_objects/PO_home.resource
Resource  ./page_objects/PO_login.resource
Resource  ./page_objects/PO_main.resource
Resource  ./page_objects/PO_transfer_funds.resource
Resource  ./page_objects/PO_account_summary.resource

# Importando os arquivos de keywords
Resource  ./keywords/kws_sistema_bancario.resource