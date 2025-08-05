*** Settings ***
Documentation  Este arquivo contém os passos para realizar uma transferência bancária no sistema bancário de testes.
Resource  ../main.robot

*** Keywords ***
Acessar página home do site
  [Documentation]  Acessa a página inicial do site de testes (https://demo.testfire.net/login.jsp)
  [Arguments]  ${URL_HOME}=${DEMO_TEST_FIRE_URL}
  Go To  ${URL_HOME} 
  Title Should Be  ${HOME_TITLE}

Verificar o saldo atual da conta
  [Documentation]  Verifica o saldo atual da conta bancária especificada.
  [Arguments]  ${ACCOUNT_ID}
  Realizar o login
  Acessar resumo da conta "${ACCOUNT_ID}"
  Verificar e obter o saldo da conta  ${ACCOUNT_ID}
  Realizar o logoff do sistema bancário

Verificar e obter o saldo da conta
  [Documentation]  Verifica e captura o saldo da conta bancária especificada.
  [Arguments]  ${ACCOUNT_ID}
  Wait Until Page Contains Element  ${ACCOUNT_HISTORY_TITLE}
  ${CURRENT_AVAILABLE_BALANCE}  Get Text  ${TABLE_BALANCE_DETAIL} 
  Log  Saldo atual da conta ${ACCOUNT_ID}: ${CURRENT_AVAILABLE_BALANCE}
  Capture Page Screenshot
  Set Test Variable  ${AVAILABLE_BALANCE}  ${CURRENT_AVAILABLE_BALANCE}

Realizar o logoff do sistema bancário
  [Documentation]  Realiza o logoff do sistema bancário.
  Click Link  ${HOME_LINK_LOGOFF}
  Wait Until Page Contains Element  ${HOME_LINK_LOGIN}

Clicar no botão e aguardar elemento
  [Documentation]  Clica no botão para enviar o formulário e aguarda a página principal carregar.
  [Arguments]  ${LOCATOR_ELEMENT_BUTTON}  ${LOCATOR_ELEMENT_TITLE}
  Click Button  ${LOCATOR_ELEMENT_BUTTON} 
  Wait Until Element Is Visible  ${LOCATOR_ELEMENT_TITLE}