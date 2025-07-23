*** Settings ***
Resource  ../main.robot

*** Keywords ***
Acessar página home do site
  [Documentation]  Acessa a página inicial do site de testes (https://todomvc.com/examples/react/dist/)
  [Arguments]  ${URL_HOME}=${TODO_MVC_URL}
  Go To  ${URL_HOME} 
  Title Should Be  ${HOME_TITLE}
  Capture Page Screenshot

Adicionar "${QUANT_ATIVIDADES}" atividade(s)
  [Documentation]  Adiciona uma lista de atividades à lista de tarefas
  Gerar lista de atividades aleatórias  ${QUANT_ATIVIDADES}
  FOR  ${ATIVIDADE}  IN  @{LISTA_ATIVIDADES_GERADA}
    Input Text  ${HOME_CAMPO_PESQUISAR}  ${ATIVIDADE}
    Press Keys  ${HOME_CAMPO_PESQUISAR}  RETURN
  END
  Wait Until Element Is Visible  ${HOME_LISTA_TAREFAS}
  Capture Page Screenshot

Gerar lista de atividades aleatórias
  [Documentation]  Gera uma lista de atividades aleatórias para serem adicionadas à lista de tarefas
  [Arguments]  ${QUANT_ATIVIDADES}
  @{LISTA_ATIVIDADES}  Create List
  FOR  ${INDEX}  IN RANGE  ${QUANT_ATIVIDADES}
    ${ATIVIDADE}  Generate Random String  length=10  chars=[LETTERS]
    Append To List  ${LISTA_ATIVIDADES}  ${ATIVIDADE}
  END
  Set Test Variable  @{LISTA_ATIVIDADES_GERADA}  @{LISTA_ATIVIDADES}

Marcar atividade "${NUM_ATIVIDADE}" como concluída
  [Documentation]  Marca a atividade selecionada como concluída
  Click Element  locator=(${HOME_LISTA_TAREFAS}${HOME_CHECKBOX_OPCOES_LISTA})[${NUM_ATIVIDADE}]
  Capture Page Screenshot
  Verificar se a atividade "${NUM_ATIVIDADE}" está concluída

Verificar se a atividade "${NUM_ATIVIDADE}" está concluída
  [Documentation]  Verifica se a atividade selecionada está marcada como concluída
  ${ATIVIDADE_SELECIONADA}  Set Variable  (${HOME_LISTA_TAREFAS})[${NUM_ATIVIDADE}]
  Element Attribute Value Should Be  locator=${ATIVIDADE_SELECIONADA}  attribute=class  expected=completed
  ${TEXTO_OPC}  Get Text  locator=${ATIVIDADE_SELECIONADA}//label
  Log  Texto da atividade marcada como concluída: ${TEXTO_OPC}
  ${INDEX_CORRIGIDO}  Evaluate  ${NUM_ATIVIDADE} - 1
  Should Contain  ${TEXTO_OPC}  ${LISTA_ATIVIDADES_GERADA}[${INDEX_CORRIGIDO}]
  Log  A atividade "${NUM_ATIVIDADE}" foi marcada como concluída, com sucesso!

Filtrar as atividades em "${TIPO_FILTRAGEM}"
  [Documentation]  Filtra a lista de atividades com base no tipo de filtragem selecionado
  ${TIPO_FILTRO}  Convert To Lowercase  ${TIPO_FILTRAGEM}
  ${OPCOES_FOOTER_FORMATADO}  Format String  ${OPCOES_FOOTER}  opc=${TIPO_FILTRO}
  Click Link  locator=${OPCOES_FOOTER_FORMATADO}
  Capture Page Screenshot

Excluir atividade "${NUM_ATIVIDADE}"
  [Documentation]  Exclui a atividade selecionada da lista de tarefas
  Click Element  locator=(${HOME_LISTA_TAREFAS}${HOME_BTN_OPCOES_LISTA})[${NUM_ATIVIDADE}]
  Capture Page Screenshot
  Verificar se a atividade "${NUM_ATIVIDADE}" não está mais presente na lista

Verificar se a atividade "${NUM_ATIVIDADE}" não está mais presente na lista
  [Documentation]  Verifica se a atividade removida foi realmente excluída da lista de tarefas
  ${ATIVIDADE_EXCLUIDA}  Set Variable  ${HOME_LISTA_TAREFAS}${HOME_LABEL_OPCOES_LISTA}
  ${INDEX_CORRIGIDO}  Evaluate  ${NUM_ATIVIDADE} - 1
  ${ATIVIDADE_EXCLUIDA_FORMATADA}  Format String  ${ATIVIDADE_EXCLUIDA}  text=${LISTA_ATIVIDADES_GERADA}[${INDEX_CORRIGIDO}]
  ${ELEMENTO_PRESENTE}  Run Keyword And Return Status  Element Should Be Visible  locator=${ATIVIDADE_EXCLUIDA_FORMATADA}
  Should Not Be True  ${ELEMENTO_PRESENTE}
  Log  A atividade "${NUM_ATIVIDADE}", não está mais presente na lista!

Limpar as atividades concluídas
  [Documentation]  Limpa todas as atividades marcadas como concluídas
  Click Element  locator=${BTN_LIMPAR_ATIVIDADES_CONCLUÍDAS}
  Capture Page Screenshot
  Verificar se há alguma atividade concluída na lista

Verificar se há alguma atividade concluída na lista
  [Documentation]  Verifica se existem atividades concluídas na lista de tarefas
  ${LOCATOR_LISTA_CONCLUIDAS}  Set Variable  ${HOME_LISTA_TAREFAS}\[contains(@class, 'completed')]
  ${LISTA_ELEMENTOS_CONCLUIDOS}  Get WebElements  locator=${LOCATOR_LISTA_CONCLUIDAS}
  Log  Quantidade de elementos de atividades concluídas retornados: ${LISTA_ELEMENTOS_CONCLUIDOS}
  Should Be Empty  ${LISTA_ELEMENTOS_CONCLUIDOS}
  Log  Não há atividades concluídas na lista, após a limpeza!