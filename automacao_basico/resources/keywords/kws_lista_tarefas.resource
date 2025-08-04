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
  [Documentation]  Cria uma lista de atividades com o número de atividades especificado e insere cada atividade na lista
  @{LISTA_ATIVIDADES}  Create List
  FOR  ${INDEX}  IN RANGE  ${QUANT_ATIVIDADES}
    #${ATIVIDADE}  Catenate  Atividade ${INDEX + 1}
    ${ATIVIDADE}  Evaluate  "Atividade " + str(${INDEX} + 1)
    Append To List  ${LISTA_ATIVIDADES}  ${ATIVIDADE}
    Inserir atividade  ${HOME_INPUT_NOVA_TAREFA}  ${ATIVIDADE}
  END
  Set Test Variable  @{LISTA_ATIVIDADES_GERADA}  @{LISTA_ATIVIDADES}
  Wait Until Element Is Visible  ${HOME_LISTA_TAREFAS}
  Capture Page Screenshot

Inserir atividade
  [Documentation]  Clicar no campo de entrada, inserir uma atividade e pressionar Enter
  [Arguments]  ${INPUT_NOVA_TAREFA}  ${TEXTO_ATIVIDADE}
  Input Text  ${INPUT_NOVA_TAREFA}  ${TEXTO_ATIVIDADE}
  Press Keys  ${INPUT_NOVA_TAREFA}  RETURN

Marcar atividade "${NUM_ATIVIDADE}" como concluída
  [Documentation]  Marca a atividade selecionada como concluída
  Click Element  locator=(${HOME_LISTA_TAREFAS}${HOME_CHECKBOX_OPCOES_LISTA})[${NUM_ATIVIDADE}]
  Capture Page Screenshot
  ${DIV_ATIVIDADE_SELECIONADA}  Verificar se a atividade "${NUM_ATIVIDADE}" está concluída
  ${TEXTO_ATIVIDADE_SELECIONADA}  Obter o conteúdo da atividade selecionada  ${DIV_ATIVIDADE_SELECIONADA}
  ${TEXTO_ATIVIDADE_VALIDADO}  Validar o texto da atividade selecionada  ${TEXTO_ATIVIDADE_SELECIONADA}  ${NUM_ATIVIDADE}

Verificar se a atividade "${NUM_ATIVIDADE}" está concluída
  [Documentation]  Verifica se a atividade selecionada está marcada como concluída
  ${ATIVIDADE_SELECIONADA}  Set Variable  (${HOME_LISTA_TAREFAS})[${NUM_ATIVIDADE}]
  Element Attribute Value Should Be  locator=${ATIVIDADE_SELECIONADA}  attribute=class  expected=completed
  Log  A atividade "${NUM_ATIVIDADE}" foi marcada como concluída, com sucesso!
  RETURN  ${ATIVIDADE_SELECIONADA}

Obter o conteúdo da atividade selecionada
  [Documentation]  Obtém o conteúdo da atividade selecionada na lista de tarefas
  [Arguments]  ${DIV_ATIVIDADE_SELECIONADA}
  ${TEXTO_ATIVIDADE_SELECIONADA}  Get Text  locator=${DIV_ATIVIDADE_SELECIONADA}//label
  Log  Texto da atividade marcada como concluída: ${TEXTO_ATIVIDADE_SELECIONADA}
  RETURN  ${TEXTO_ATIVIDADE_SELECIONADA}

Validar o texto da atividade selecionada
  [Documentation]  Validar se o texto da atividade selecionada é igual ao texto da mesma posição na lista de atividades gerada
  [Arguments]  ${TEXTO_ATIVIDADE_SELECIONADA}  ${NUM_ATIVIDADE}
  ${INDEX_CORRIGIDO}  Evaluate  ${NUM_ATIVIDADE} - 1
  ${TEXTO_ATIVIDADE_LISTA}  Set Variable  ${LISTA_ATIVIDADES_GERADA}[${INDEX_CORRIGIDO}]
  ${resultado}  Run Keyword And Return Status  Should Be Equal  ${TEXTO_ATIVIDADE_SELECIONADA}  ${TEXTO_ATIVIDADE_LISTA}
  IF  ${resultado}
    Log  A atividade "${NUM_ATIVIDADE}" foi validada com sucesso, o texto retornado "${TEXTO_ATIVIDADE_SELECIONADA}", confere com o texto da mesma posição na lista de atividades gerada: "${TEXTO_ATIVIDADE_LISTA}".
    ${resultado}  Set Variable  ${TEXTO_ATIVIDADE_LISTA}
  ELSE
    Log  Falha ao validar a atividade "${NUM_ATIVIDADE}", o texto retornado "${TEXTO_ATIVIDADE_SELECIONADA}" não confere com o texto da mesma posição na lista de atividades gerada "${TEXTO_ATIVIDADE_LISTA}"  ERROR
    ${resultado}  Set Variable  Fail
  END
  RETURN  ${resultado}

Filtrar as atividades em "${TIPO_FILTRAGEM}"
  [Documentation]  Filtra a lista de atividades com base no tipo de filtragem selecionado
  ${TIPO_FILTRO}  Convert To Lowercase  ${TIPO_FILTRAGEM}
  ${OPCOES_FOOTER_FORMATADO}  Format String  ${HOMER_FOOTER_OPCOES}  opc=${TIPO_FILTRO}
  Click Link  locator=${OPCOES_FOOTER_FORMATADO}
  Capture Page Screenshot

Excluir atividade "${NUM_ATIVIDADE}"
  [Documentation]  Exclui a atividade selecionada da lista de tarefas
  ${TEXTO_ATIVIDADE_VALIDADO}  Obter o conteúdo da atividade que será excluída  ${NUM_ATIVIDADE}
  Click Element  locator=(${HOME_LISTA_TAREFAS}${HOME_BTN_OPCOES_LISTA})[${NUM_ATIVIDADE}]
  Capture Page Screenshot
  Verificar se a atividade especificada foi removida da lista  ${NUM_ATIVIDADE}  ${TEXTO_ATIVIDADE_VALIDADO}

Obter o conteúdo da atividade que será excluída
  [Documentation]  Obtém o conteúdo da atividade que será excluída
  [Arguments]  ${NUM_ATIVIDADE}
  ${DIV_ATIVIDADE_EXCLUIDA}  Set Variable  (${HOME_LISTA_TAREFAS})[${NUM_ATIVIDADE}]
  ${TEXTO_ATIVIDADE_SELECIONADA}  Obter o conteúdo da atividade selecionada  ${DIV_ATIVIDADE_EXCLUIDA}
  ${TEXTO_ATIVIDADE_VALIDADO}  Validar o texto da atividade selecionada  ${TEXTO_ATIVIDADE_SELECIONADA}  ${NUM_ATIVIDADE}
  Log  A atividade "${NUM_ATIVIDADE}" foi selecionada para exclusão, e o seu conteúdo é: "${TEXTO_ATIVIDADE_VALIDADO}".
  RETURN  ${TEXTO_ATIVIDADE_VALIDADO}

Verificar se a atividade especificada foi removida da lista
  [Documentation]  Verifica se a atividade removida da lista de tarefas não está mais visível
  [Arguments]  ${NUM_ATIVIDADE}  ${TEXTO_ATIVIDADE_VALIDADO}
  ${ATIVIDADE_EXCLUIDA}  Set Variable  ${HOME_LISTA_TAREFAS}${HOME_LABEL_OPCOES_LISTA}
  ${ATIVIDADE_EXCLUIDA_FORMATADA}  Format String  ${ATIVIDADE_EXCLUIDA}  text=${TEXTO_ATIVIDADE_VALIDADO}
  ${ELEMENTO_PRESENTE}  Run Keyword And Return Status  Element Should Be Visible  locator=${ATIVIDADE_EXCLUIDA_FORMATADA}
  Should Not Be True  ${ELEMENTO_PRESENTE}
  Log  A atividade "${NUM_ATIVIDADE}", não está mais presente na lista!

Limpar as atividades concluídas
  [Documentation]  Limpa todas as atividades marcadas como concluídas
  Click Element  locator=${HOMER_BTN_LIMPAR_ATV_CONCLUÍDAS}
  Capture Page Screenshot
  Verificar se há alguma atividade concluída na lista

Verificar se há alguma atividade concluída na lista
  [Documentation]  Verifica se existem atividades concluídas na lista de tarefas
  ${LOCATOR_LISTA_CONCLUIDAS}  Set Variable  ${HOME_LISTA_TAREFAS}\[contains(@class, 'completed')]
  ${LISTA_ELEMENTOS_CONCLUIDOS}  Get WebElements  locator=${LOCATOR_LISTA_CONCLUIDAS}
  Log  Quantidade de elementos de atividades concluídas retornados: ${LISTA_ELEMENTOS_CONCLUIDOS}
  Should Be Empty  ${LISTA_ELEMENTOS_CONCLUIDOS}
  Log  Não há atividades concluídas na lista, após a limpeza!