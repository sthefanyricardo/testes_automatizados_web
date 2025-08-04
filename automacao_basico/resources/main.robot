*** Settings ***
Documentation  Arquivo principal de importação de todos os arquivos de recursos/resources (bibliotecas, keywords, pages objects e variáveis)

# Importando as bibliotecas de keywords
Library  SeleniumLibrary
Library  Collections
Library  String
Library  FakerLibrary  locale=pt_BR

# Importando os arquivos de keywords comuns
Resource  ./keywords_common/setup.resource
Resource  ./keywords_common/teardown.resource
Resource  ./keywords_common/kws_shered.resource

# Importando os arquivos de variáveis de URL
Resource  ./environments/url_variables.resource

# Importando os arquivos de pages objects
Resource  ./page_objects/PO_lista_tarefas.resource

# Importando os arquivos de keywords
Resource  ./keywords/kws_lista_tarefas.resource