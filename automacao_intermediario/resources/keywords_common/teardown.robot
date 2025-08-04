*** Settings ***
Documentation  Arquivo principal de finalização dos testes (aqui estarão todas as keywords de finalização)
Resource  ../main.robot

*** Keywords ***
Fechar o navegador
  [Documentation]  Fecha o navegador (Browser)
  Close Browser

Limpar variaveis globais
  [Documentation]  Limpa as variáveis globais utilizadas no teste.
  Set Global Variable  @{LIST_POSICAO_PRODUTOS_ADICIONADOS}  @{EMPTY}
  Log  A lista global de posições de produtos adicionados foi limpa.
  FOR  ${key}  ${value}  IN  &{DIC_PRODUTOS_ADICIONADOS}
    IF  '${value}' != ''
      Set To Dictionary  ${DIC_PRODUTOS_ADICIONADOS}  ${key}  ${EMPTY}
    END
    Log  O dicionário global de posições de produtos por ordem de adicionados, foi limpo.
  END