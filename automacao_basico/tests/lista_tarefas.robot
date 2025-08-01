***Settings***
Documentation  Este arquivo contém os casos de teste automatizados para o gerenciador de atividades To-Do MVC (https://todomvc.com/examples/react/dist/), incluindo casos de testes de adição, marcação, exclusão, filtragem e limpeza de atividades da lista de tarefas.
Resource  ../resources/main.robot
Suite Setup  Abrir o navegador
Test Setup  Acessar página home do site  ${TODO_MVC_URL}
Suite Teardown  Fechar o navegador

***Test Cases***
CT01: Adicionar atividades, marcar como concluída e filtrar concluídas
  [Documentation]  Teste que verifica a adição de 3 atividades, marca a 2ª atividade como concluída e faz a filtragem de todas as atividades concluídas
  [Tags]  CT01  ADICIONAR_MARCAR_FILTRAR
  Adicionar "3" atividade(s)
  Marcar atividade "2" como concluída
  Filtrar as atividades em "Completed"

CT02: Adicionar, concluir, excluir atividade e filtrar concluídas
  [Documentation]  Teste que verifica a adição de 4 atividades, marca a 3ª atividade como concluída e depois exclui essa atividade, e faz a filtragem de todas as atividades concluídas
  [Tags]  CT02  ADICIONAR_MARCAR_EXCLUIR_FILTRAR
  Adicionar "4" atividade(s)
  Marcar atividade "3" como concluída
  Excluir atividade "3"
  Filtrar as atividades em "Completed"

CT03: Adicionar atividades, concluir uma e limpar concluídas
  [Documentation]  Teste que verifica a adição de 4 atividades, marca a 4ª atividade como concluída e depois limpa as atividades concluídas
  [Tags]  CT03  ADICIONAR_MARCAR_LIMPAR
  Adicionar "4" atividade(s)
  Marcar atividade "4" como concluída
  Limpar as atividades concluídas 