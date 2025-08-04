*** Settings ***
Resource  ../main.robot
Library    DateTime

*** Keywords ***
Dado que realizo o login com usuário "${LOGIN_USER}" e senha "${LOGIN_PASSWORD}" na página inicial do sistema bancário
  [Documentation]  Realiza o login na página inicial do sistema bancário com os dados fornecidos.
  Realizar login na página inicial do sistema bancário  ${LOGIN_USER}  ${LOGIN_PASSWORD}

Quando realizo uma transferência da conta "${FROM_ACCOUNT}" para a conta "${TO_ACCOUNT}"
  [Documentation]  Realiza a transferência de uma conta para outra no sistema bancário.
  Realizar transferência da conta "${FROM_ACCOUNT}" para a conta "${TO_ACCOUNT}"

Então acesso o resumo da conta "${ACCOUNT_ID}"
  [Documentation]  Acessa o resumo da conta bancária especificada.
  Acessar resumo da conta "${ACCOUNT_ID}"

E verifico se a transferência foi listada corretamente
  [Documentation]  Verifica se a transferência foi listada corretamente no resumo da conta.
  Verificar se a transferência foi listada corretamente

E verifico se o saldo da conta "${ACCOUNT_ID}" foi atualizado corretamente
  [Documentation]  Verifica se o saldo da conta foi atualizado corretamente após a transferência.
  Verificar se o saldo da conta foi atualizado corretamente  ${ACCOUNT_ID}

Acessar página home do site
  [Documentation]  Acessa a página inicial do site de testes (https://demo.testfire.net/login.jsp)
  [Arguments]  ${URL_HOME}=${DEMO_TEST_FIRE_URL}
  Go To  ${URL_HOME} 
  Title Should Be  ${HOME_TITLE}

Realizar login na página inicial do sistema bancário
  [Documentation]  Realiza o login na página inicial do sistema bancário.
  [Arguments]  ${LOGIN_USER}=admin  ${LOGIN_PASSWORD}=admin
  Click Link  ${HOME_LINK_LOGIN}
  Wait Until Page Contains Element  ${LOGIN_TITLE}
  Capture Page Screenshot
  Input Text  ${LOGIN_CAMPO_USER}  ${LOGIN_USER}
  Input Text  ${LOGIN_CAMPO_PASSWORD}  ${LOGIN_PASSWORD}
  Capture Page Screenshot
  Click Button  ${LOGIN_BUTTON} 
  Wait Until Page Contains Element  ${MAIN_TITLE}

Realizar transferência da conta "${FROM_ACCOUNT}" para a conta "${TO_ACCOUNT}"
  [Documentation]  Realiza a transferência de uma conta para outra no sistema bancário.
  Click Link  ${MAIN_LINK_TRANSFER_FUNDS}
  Wait Until Page Contains Element  ${TRANSFER_TITLE}
  Select From List By Label  ${TRANSFER_FIELD_FROM_ACCOUNT}  ${FROM_ACCOUNT}
  Select From List By Label  ${TRANSFER_FIELD_TO_ACCOUNT}  ${TO_ACCOUNT}
  ${RANDOM_VALUE}  Evaluate  round(random.uniform(10000000000, 99999999999), 2)    modules=random
  Input Text  ${TRANSFER_FIELD_AMOUNT_TRANSFER}  ${RANDOM_VALUE}
  Click Button  ${TRANSFER_BUTTON_TRANSFER_MONEY}
  Capture Page Screenshot
  Log  Transferência de ${FROM_ACCOUNT} para ${TO_ACCOUNT}, no valor de ${RANDOM_VALUE}, realizada com sucesso!
  Wait Until Page Contains Element  ${TRANSFER_SUCCESS_MESSAGE}
  Set Test Variable  ${TRANSFERRED_AMOUNT}  ${RANDOM_VALUE}

Acessar resumo da conta "${ACCOUNT_ID}"
  [Documentation]  Acessa o resumo da conta bancária especificada.
  Click Link  ${MAIN_LINK_ACCOUNT_SUMMARY}
  Select From List By Label  ${MAIN_FIELD_LIST_ACCOUNTS}  ${ACCOUNT_ID}
  Capture Page Screenshot
  Click Button  ${MAIN_BUTTON_GET_ACCOUNT}

Verificar se a transferência foi listada corretamente
  [Documentation]  Verifica se a transferência foi listada corretamente no resumo da conta.
  Page Should Contain Element  ${TITLE_TABLE_RECENT_TRANSACTIONS}
  Capture Page Screenshot
  ${encontrado}  Set Variable  False
  #${current_date}  Get Current Date  result_format=%Y-%m-%d
  ${FRASE_BUSCA}  Catenate  Deposit $${TRANSFERRED_AMOUNT}
  @{linhas}  Get WebElements  ${TABLE_RECENT_TRANSACTIONS}//tr
  FOR  ${linha}  IN  @{linhas}
    ${texto_retornado}  Get Text  ${linha}
    Log  Conteúdo da linha atual da tabela: ${texto_retornado}
    ${result}  Run Keyword And Return Status  Should Contain  ${texto_retornado}  ${FRASE_BUSCA}
    IF  ${result}
      Log  Os dados "${FRASE_BUSCA}", foram encontrados na linha: ${texto_retornado}!
      ${encontrado}  Set Variable  True
      Exit For Loop
    ELSE
      Log  Os dados "${FRASE_BUSCA}", não foram encontrados na linha: ${texto_retornado}!  WARN
    END
  END
  IF  not ${encontrado}
    Fail  Os dados "${FRASE_BUSCA}", não foram encontrados na tabela de transações recentes!
  END
    
Verificar se o saldo da conta foi atualizado corretamente
  [Documentation]  Verifica se o saldo da conta foi atualizado corretamente após a transferência.
  [Arguments]  ${ACCOUNT_ID}
  ${CURRENT_AVAILABLE_BALANCE}  Get Text  ${TABLE_BALANCE_DETAIL} 
  Log  Novo saldo na conta ${ACCOUNT_ID}: ${CURRENT_AVAILABLE_BALANCE}
  ${result}  Run Keyword And Return Status  Should Not Be Equal  ${CURRENT_AVAILABLE_BALANCE}    ${AVAILABLE_BALANCE}

Verificar o saldo atual da conta
  [Documentation]  Verifica o saldo atual da conta bancária especificada.
  [Arguments]  ${ACCOUNT_ID}
  Realizar login na página inicial do sistema bancário
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