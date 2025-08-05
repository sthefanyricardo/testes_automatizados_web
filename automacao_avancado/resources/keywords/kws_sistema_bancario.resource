*** Settings ***
Documentation  Este arquivo contém os passos para realizar uma transferência bancária no sistema bancário de testes.
Resource  ../main.robot

*** Keywords ***
Dado que realizo o login com usuário "${USER}" e senha "${PASSWORD}" na página inicial do sistema bancário
  [Documentation]  Realiza o login na página inicial do sistema bancário com os dados fornecidos.
  Realizar o login  ${USER}  ${PASSWORD}

Quando realizo uma transferência da conta "${FROM_ACCOUNT}" para a conta "${TO_ACCOUNT}"
  [Documentation]  Realiza a transferência de uma conta para outra no sistema bancário.
  Realizar transferência entre contas  ${FROM_ACCOUNT}  ${TO_ACCOUNT}

Então acesso o resumo da conta "${ACCOUNT_ID}"
  [Documentation]  Acessa o resumo da conta bancária especificada.
  Acessar resumo da conta "${ACCOUNT_ID}"

E verifico se a transferência foi listada corretamente
  [Documentation]  Verifica se a transferência foi listada corretamente no resumo da conta.
  Verificar se a transferência foi listada corretamente

E verifico se o saldo da conta "${ACCOUNT_ID}" foi atualizado corretamente
  [Documentation]  Verifica se o saldo da conta foi atualizado corretamente após a transferência.
  Verificar se o saldo da conta foi atualizado corretamente  ${ACCOUNT_ID}

Realizar o login
  [Documentation]  Realiza o login na página inicial do sistema bancário.
  [Arguments]  ${USER}=${LOGIN_USER}  ${PASSWORD}=${LOGIN_PASSWORD}
  Ir para a página de login do sistema bancário
  Preencher o formulário de login com os dados fornecidos  ${USER}  ${PASSWORD}
  Clicar no botão e aguardar elemento  ${LOGIN_BUTTON}  ${MAIN_TITLE}

Ir para a página de login do sistema bancário
  [Documentation]  Clicar no link "ONLINE BANKING LOGIN" na página inicial do sistema bancário.
  Click Link  ${HOME_LINK_LOGIN}
  Wait Until Element Is Visible  ${LOGIN_TITLE}
  Capture Page Screenshot

Preencher o formulário de login com os dados fornecidos
  [Documentation]  Preenche o formulário de login com os dados fornecidos.
  [Arguments]  ${USER}=${LOGIN_USER}  ${PASSWORD}=${LOGIN_PASSWORD}
  Input Text  ${LOGIN_CAMPO_USER}  ${USER}
  Input Text  ${LOGIN_CAMPO_PASSWORD}  ${PASSWORD}
  Capture Page Screenshot

Realizar transferência entre contas
  [Documentation]  Realiza a transferência de uma conta para outra no sistema bancário.
  [Arguments]  ${FROM_ACCOUNT}  ${TO_ACCOUNT}
  Escolher uma opção no menu da página principal e aguardar a página carregar  transfer_funds  ${TRANSFER_TITLE}
  Preencher os campos do formulário de transferência e enviar  ${FROM_ACCOUNT}  ${TO_ACCOUNT}
  Verificar se a transferência foi realizada com sucesso  ${FROM_ACCOUNT}  ${TO_ACCOUNT}

Escolher uma opção no menu da página principal e aguardar a página carregar
  [Documentation]  Escolhe uma opção no menu da página principal do sistema bancário e aguarda a página carregar.
  [Arguments]  ${OPTION}  ${LOCATOR_ELEMENT_TITLE}
  Click Link  ${MAIN_MENU_LINKS.${OPTION}}
  Wait Until Element Is Visible  ${LOCATOR_ELEMENT_TITLE}

Preencher os campos do formulário de transferência e enviar
  [Documentation]  Preenche os campos do formulário de transferência e envia o formulário.
  [Arguments]  ${FROM_ACCOUNT}  ${TO_ACCOUNT}
  Select From List By Label  ${TRANSFER_FIELD_FROM_ACCOUNT}  ${FROM_ACCOUNT}
  Select From List By Label  ${TRANSFER_FIELD_TO_ACCOUNT}  ${TO_ACCOUNT}
  ${RANDOM_VALUE_GENERATED}  Gerar valor aleatório para transferência
  Input Text  ${TRANSFER_FIELD_AMOUNT_TRANSFER}  ${RANDOM_VALUE_GENERATED}
  Capture Page Screenshot
  Click Button  ${TRANSFER_BUTTON_TRANSFER_MONEY}
  Set Test Variable  ${TRANSFERRED_AMOUNT}  ${RANDOM_VALUE_GENERATED}

Verificar se a transferência foi realizada com sucesso
  [Documentation]  Verifica se a transferência foi realizada com sucesso.
  [Arguments]  ${FROM_ACCOUNT}  ${TO_ACCOUNT}
  ${MENSAGEM_SUCESSO_VALIDACAO}  Format String  ${TRANSFER_SUCCESS_MESSAGE}  valor_transferencia=${TRANSFERRED_AMOUNT}
  Element Should Be Visible  ${MENSAGEM_SUCESSO_VALIDACAO}
  Log  Transferência de ${FROM_ACCOUNT} para ${TO_ACCOUNT}, no valor de ${TRANSFERRED_AMOUNT}, realizada com sucesso!
  Capture Page Screenshot

Gerar valor aleatório para transferência
  [Documentation]  Gera um valor aleatório para a transferência.
  ${RANDOM_VALUE}  Evaluate  round(random.uniform(1000000, 9999999), 2)  modules=random
  RETURN  ${RANDOM_VALUE}

Acessar resumo da conta "${ACCOUNT_ID}"
  [Documentation]  Acessa o resumo da conta bancária especificada.
  Escolher uma opção no menu da página principal e aguardar a página carregar  account_summary  ${MAIN_TITLE}
  Select From List By Label  ${MAIN_FIELD_LIST_ACCOUNTS}  ${ACCOUNT_ID}
  Capture Page Screenshot
  Click Button  ${MAIN_BUTTON_GET_ACCOUNT}
  Wait Until Element Is Visible  ${ACCOUNT_HISTORY_TITLE}

Verificar se a transferência foi listada corretamente
  [Documentation]  Verifica se a transferência foi listada corretamente no resumo da conta.
  Page Should Contain Element  ${TITLE_TABLE_RECENT_TRANSACTIONS}
  Capture Page Screenshot
  Buscar a transferência recente na tabela 10 transações mais recentes

Buscar a transferência recente na tabela 10 transações mais recentes
  [Documentation]  Busca a transferência recente na tabela de transações recentes.
  ${encontrado}  Set Variable  False
  ${FRASE_BUSCA}  Catenate  $${TRANSFERRED_AMOUNT}
  @{LINHAS_RETORNADAS_TABELA}  Get WebElements  ${TABLE_RECENT_TRANSACTIONS}//tr
  FOR  ${index_linha}  IN  @{LINHAS_RETORNADAS_TABELA}
    ${texto_retornado}  Get Text  ${index_linha}
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
  Log  Novo saldo na conta ${ACCOUNT_ID}: ${CURRENT_AVAILABLE_BALANCE}.
  Log  Antigo saldo da conta ${ACCOUNT_ID}: ${AVAILABLE_BALANCE}.
  ${result}  Run Keyword And Return Status  Should Not Be Equal As Numbers  ${CURRENT_AVAILABLE_BALANCE}  ${AVAILABLE_BALANCE}
  Log  Saldo da conta ${ACCOUNT_ID} atualizado corretamente após a transferência de ${TRANSFERRED_AMOUNT}!.