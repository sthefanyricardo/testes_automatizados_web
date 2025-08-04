*** Settings ***
Resource  ../main.robot

*** Keywords ***
Acessar página home do site
  [Documentation]  Acessa a página inicial do site de testes (https://www.saucedemo.com/)
  [Arguments]  ${URL_HOME}=${SAUCE_DEMO_URLS.env_v0}
  Go To  ${URL_HOME} 
  Title Should Be  ${LOGIN_TITLE}
  Capture Page Screenshot

Login com usuário
  [Documentation]  Realiza o login no sistema com o usuário e senha fornecidos pelos argumentos.
  [Arguments]  ${username}=${DIC_LOGIN_USERS.user_padrao}  ${password}=${LOGIN_PASSWORD}
  Input Text  ${LOGIN_FIELD_USER}  ${username}
  Input Text  ${LOGIN_FIELD_PASSWORD}  ${password}
  Capture Page Screenshot
  Click Button  ${LOGIN_BUTTON}

Adicionar "${POSICAO}" produto ao carrinho
  [Documentation]  Adiciona o produto especificado ao carrinho.
  Capture Page Screenshot
  ${INDICE_POSICAO}  Converter posição escrita para numero  ${POSICAO}
  ${BTN_ADICIONAR_CARRINHO}  Set Variable  (${INVENTORY_DIV_INVENTARIO_ITEM}${INVENTORY_BTN_ADICIONAR_CARRINHO})[${INDICE_POSICAO}]
  Obter o nome do produto adicionado  ${INDICE_POSICAO}
  Scroll Element Into View  ${BTN_ADICIONAR_CARRINHO}
  Click Button  ${BTN_ADICIONAR_CARRINHO}
  Capture Page Screenshot

Remover "${POSICAO}" produto adicionado
  [Documentation]  Remove o produto especificado do carrinho.
  ${NOME_PRODUTO}  Converter posição escrita para o nome do produto  ${POSICAO}
  ${BTN_REMOVER_CARRINHO_FORMATADO}  Format String  ${INVENTORY_BTN_REMOVER_CARRINHO}  text=${NOME_PRODUTO}
  ${BTN_REMOVER_CARRINHO}  Set Variable  ${INVENTORY_DIV_INVENTARIO_ITEM}${BTN_REMOVER_CARRINHO_FORMATADO}
  Scroll Element Into View  ${BTN_REMOVER_CARRINHO}
  Click Button  ${BTN_REMOVER_CARRINHO}
  Capture Page Screenshot

Acessar carrinho e finalizar o pedido
  [Documentation]  Acessa o carrinho de compras e finaliza o pedido.
  Click Link  ${INVENTORY_LINK_CARRINHO}
  Wait Until Element Is Visible  ${CART_TITLE}
  Capture Page Screenshot
  Click Button  ${CART_BTN_CHECKOUT}
  ${FIRST_NAME}  ${LAST_NAME}  ${POSTAL_CODE}  Criar dados de nome, sobrenome e código postal aleatórios
  Input Text  ${CHECKOUT_FIELD_FIRST_NAME}  ${FIRST_NAME}
  Input Text  ${CHECKOUT_FIELD_LAST_NAME}  ${LAST_NAME}
  Input Text  ${CHECKOUT_FIELD_POSTAL_CODE}  ${POSTAL_CODE}
  Capture Page Screenshot
  Click Button  ${CHECKOUT_BTN_CONTINUE}
  Capture Page Screenshot
  Wait Until Element Is Visible  ${SECOND_CHECKOUT_TITLE}
  Click Button  ${CHECKOUT_BTN_FINISH}
  Wait Until Element Is Visible  ${CHECKOUT_LBL_FINISH}
  Wait Until Element Is Visible  ${CHECKOUT_LBL_ORDER_COMPLETE}
  Capture Page Screenshot

Acessar carrinho e tentar finalizar pedido
  [Documentation]  Acessa o carrinho de compras e tenta finalizar o pedido.
  Acessar carrinho e finalizar o pedido