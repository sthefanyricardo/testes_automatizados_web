*** Settings ***
Resource  ../main.robot
Documentation  Arquivo de keywords compartilhadas entre os testes

*** Keywords ***
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