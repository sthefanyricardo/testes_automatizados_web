*** Variables ***
${HOME_TITLE}  TodoMVC: React

${HOME_INPUT_NOVA_TAREFA}  id=todo-input

${HOME_LISTA_TAREFAS}  //li[@data-testid='todo-item']

${HOME_CHECKBOX_OPCOES_LISTA}  //input[@data-testid='todo-item-toggle']

${HOME_LABEL_OPCOES_LISTA}  //label[contains(text(), '{text}')]

${HOME_BTN_OPCOES_LISTA}  //button[@class='destroy']

${HOMER_FOOTER_OPCOES}  //ul[@data-testid='footer-navigation']//a[contains(@href, '{opc}')]

${HOMER_BTN_LIMPAR_ATV_CONCLUÍDAS}  //footer[@data-testid='footer']//button[@class='clear-completed']