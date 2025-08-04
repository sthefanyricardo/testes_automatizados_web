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

Criar dados de nome, sobrenome e código postal aleatórios
  [Documentation]  Cria dados aleatórios para o nome, sobrenome e código postal.
  ${FIRST_NAME}  FakerLibrary.First Name
  ${LAST_NAME}  FakerLibrary.Last Name
  ${POSTAL_CODE}  FakerLibrary.Postcode
  RETURN  ${FIRST_NAME}  ${LAST_NAME}  ${POSTAL_CODE}