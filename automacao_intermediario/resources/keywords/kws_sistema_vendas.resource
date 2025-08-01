*** Settings ***
Resource  ../main.robot

*** Variables ***
&{DIC_POSICOES}
...  primeiro=1
...  segundo=2
...  terceiro=3
...  quarto=4
...  quinto=5
...  sexto=6

&{DIC_PRODUTOS_ADICIONADOS}
...  primeiro=
...  segundo=
...  terceiro=
...  quarto=
...  quinto=
...  sexto=

@{LIST_POSICAO_PRODUTOS_ADICIONADOS}

*** Keywords ***
Acessar página home do site
  [Documentation]  Acessa a página inicial do site de testes (https://www.saucedemo.com/)
  [Arguments]  ${URL_HOME}=${SAUCE_DEMO_URL}
  Go To  ${URL_HOME} 
  Title Should Be  ${LOGIN_TITLE}
  Capture Page Screenshot

Login com usuário
  [Documentation]  Realiza o login no sistema com o usuário e senha fornecidos pelos argumentos.
  [Arguments]  ${username}=${LOGIN_USER}  ${password}=${LOGIN_PASSWORD}
  Input Text  ${LOGIN_FIELD_USER}  ${username}
  Input Text  ${LOGIN_FIELD_PASSWORD}  ${password}
  Capture Page Screenshot
  Click Button  ${LOGIN_BUTTON}

Adicionar "${POSICAO}" produto ao carrinho
  [Documentation]  Adiciona o produto especificado ao carrinho.
  Capture Page Screenshot
  ${INDICE_POSICAO}  Converter posição escrita para numero  ${POSICAO}
  ${BTN_ADICIONAR_CARRINHO}  Set Variable  (${INVENTORY_DIV_INVENTARIO_ITEM}${INVENTORY_BTN_ADICIONAR_CARRINHO})[${INDICE_POSICAO}]
  Capturar o nome do produto adicionado  ${INDICE_POSICAO}
  Scroll Element Into View  ${BTN_ADICIONAR_CARRINHO}
  Click Button  ${BTN_ADICIONAR_CARRINHO}
  Capture Page Screenshot

Capturar o nome do produto adicionado
  [Documentation]  Captura os índices dos produtos adicionados ao carrinho e armazena em uma lista global.
  [Arguments]  ${INDICE_POSICAO}
  ${NOME_PRODUTO}  Get Text  (${INVENTORY_DIV_INVENTARIO_ITEM}${INVENTORY_LBL_ITEM_NOME})[${INDICE_POSICAO}]
  Log  O produto a ser adicionado é: ${NOME_PRODUTO}.
  ${NOME_PRODUTO_REPLACE}  Replace String  ${NOME_PRODUTO}  ${SPACE}  -
  Log  A formatação atual do nome do produto ficou assim: ${NOME_PRODUTO_REPLACE}.
  ${NOME_PRODUTO_FORMATADO}  Convert To Lower Case  ${NOME_PRODUTO_REPLACE}
  Log  A formatação final do nome do produto ficou assim: ${NOME_PRODUTO_FORMATADO}.
  Adicionar nome do produto ao dicionário global  ${NOME_PRODUTO_FORMATADO}

Adicionar nome do produto ao dicionário global
  [Documentation]  Adiciona o nome do produto ao dicionário global de produtos adicionados.
  [Arguments]  ${NOME_PRODUTO}=${EMPTY}
  IF  '${NOME_PRODUTO}' != '${EMPTY}'
    FOR  ${key}  ${value}  IN  &{DIC_PRODUTOS_ADICIONADOS}
      IF  '${value}' == ''
        Set To Dictionary  ${DIC_PRODUTOS_ADICIONADOS}  ${key}  ${NOME_PRODUTO}
        Log  A posição do produto adicionado foi atualizada: ${DIC_PRODUTOS_ADICIONADOS}.
        Exit For Loop
      END
    END
  END

Capturar a posição do produto adicionado
  [Documentation]  Captura a posição do produto adicionado e armazena em uma variável global.
  [Arguments]  ${POSICAO}=${EMPTY}
  Append To List  ${LIST_POSICAO_PRODUTOS_ADICIONADOS}  ${POSICAO}
  Log  O índice do produto adicionado foi na lista ${LIST_POSICAO_PRODUTOS_ADICIONADOS}.

Converter posição escrita para numero
  [Documentation]  Converte a posição escrita do produto para o número correspondente.
  [Arguments]  ${POSICAO}
  IF  '${POSICAO}' in ['outro', "OUTRO"]
    ${NOVA_POSICAO}  Escolher posição aleatória sem repetição  ${POSICAO}
    Log  A nova posição aleatória escolhida foi: ${NOVA_POSICAO}
    ${POSICAO}  Set Variable  ${NOVA_POSICAO}
  END
    ${VALOR_POSICAO}  Get From Dictionary  ${DIC_POSICOES}  ${POSICAO}
    Log  A posição '${POSICAO}' especificada no argumento de entrada, corresponde ao número: ${VALOR_POSICAO}.
    Capturar a posição do produto adicionado  ${POSICAO}
  RETURN  ${VALOR_POSICAO}

Escolher posição aleatória sem repetição
  [Documentation]  Escolhe uma nova posição aleatória para adicionar um produto ao carrinho, garantindo que não haja repetição de posições já adicionadas.
  [Arguments]  ${POSICAO}
  Log  Haverá uma troca da posição atual: '${POSICAO}', por uma nova posição aleatória válida e não repetida.
  ${LISTA_TODAS_POSICOES}  Create List  primeiro  segundo  terceiro  quarto  quinto  sexto
  Remove Values From List  ${LISTA_TODAS_POSICOES}  @{LIST_POSICAO_PRODUTOS_ADICIONADOS}
  ${LISTA_POSICOES_DISPONIVEIS}  Copy List  ${LISTA_TODAS_POSICOES}
  ${NOVA_POSICAO}  Evaluate  random.choice(${LISTA_POSICOES_DISPONIVEIS})  modules=random
  RETURN  ${NOVA_POSICAO}

Remover "${POSICAO}" produto adicionado
  [Documentation]  Remove o produto especificado do carrinho.
  ${NOME_PRODUTO}  Converter posição escrita para o nome do produto  ${POSICAO}
  ${BTN_REMOVER_CARRINHO_FORMATADO}  Format String  ${INVENTORY_BTN_REMOVER_CARRINHO}  text=${NOME_PRODUTO}
  ${BTN_REMOVER_CARRINHO}  Set Variable  ${INVENTORY_DIV_INVENTARIO_ITEM}${BTN_REMOVER_CARRINHO_FORMATADO}
  Click Button  ${BTN_REMOVER_CARRINHO}
  Capture Page Screenshot
  Limpar variaveis globais

Converter posição escrita para o nome do produto
  [Documentation]  Converte a posição escrita do produto para o nome do produto correspondente.
  [Arguments]  ${POSICAO}
  FOR  ${key}  ${value}  IN  &{DIC_PRODUTOS_ADICIONADOS}
    IF  '${key}' == '${POSICAO}'
      ${NOME_PRODUTO}  Set Variable  ${value}
      Log  O produto a ser removido é: ${NOME_PRODUTO}.
      Exit For Loop
    END
  END
  RETURN  ${NOME_PRODUTO}

Limpar variaveis globais
  [Documentation]  Limpa as variáveis globais utilizadas no teste.
  Set Global Variable  @{LIST_POSICAO_PRODUTOS_ADICIONADOS}  @{EMPTY}
  Log  A lista global de posições de produtos adicionados foi limpa.
  FOR  ${key}  ${value}  IN  &{DIC_PRODUTOS_ADICIONADOS}
    IF  '${value}' != ''
      Set To Dictionary  ${DIC_PRODUTOS_ADICIONADOS}  ${key}  ${EMPTY}
    END
    Log  O dicionário global de posições de produtos por ordem de adicionados, foi limpo.
  END

Acessar carrinho e finalizar o pedido
  [Documentation]  Acessa o carrinho de compras e finaliza o pedido.
  Click Link  ${INVENTORY_LINK_CARRINHO}
  Wait Until Element Is Visible  ${CART_TITLE}
  Capture Page Screenshot
  Click Button  ${CART_BTN_CHECKOUT}
  ${FIRST_NAME}  FakerLibrary.First Name
  ${LAST_NAME}  FakerLibrary.Last Name
  ${POSTAL_CODE}  FakerLibrary.Postcode
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