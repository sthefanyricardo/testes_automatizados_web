*** Settings ***
Documentation  Este arquivo contém as keywords para o gerenciador de atividades To-Do MVC (https://todomvc.com/examples/react/dist/), incluindo ações de abertura de navegador, inserção de atividades, marcação como concluídas, filtragem, exclusão e limpeza de atividades concluídas.
Resource  ../main.robot

*** Keywords ***
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

Limpar as atividades concluídas
  [Documentation]  Limpa todas as atividades marcadas como concluídas
  Click Element  locator=${HOMER_BTN_LIMPAR_ATV_CONCLUÍDAS}
  Capture Page Screenshot
  Verificar se há alguma atividade concluída na lista