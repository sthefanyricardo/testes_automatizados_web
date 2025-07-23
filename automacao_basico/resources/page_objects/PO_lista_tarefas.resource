*** Variables ***
${HOME_TITLE}  TodoMVC: React

${HOME_CAMPO_PESQUISAR}  id=todo-input

${HOME_LISTA_TAREFAS}  //li[@data-testid='todo-item']

${HOME_CHECKBOX_OPCOES_LISTA}  //input[@data-testid='todo-item-toggle']

${HOME_LABEL_OPCOES_LISTA}  //label[contains(text(), '{text}')]

${HOME_BTN_OPCOES_LISTA}  //button[@class='destroy']

${OPCOES_FOOTER}  //ul[@data-testid='footer-navigation']//a[contains(@href, '{opc}')]

${BTN_LIMPAR_ATIVIDADES_CONCLUÍDAS}  //footer[@data-testid='footer']//button[@class='clear-completed']