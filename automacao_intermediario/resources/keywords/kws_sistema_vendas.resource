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

&{DIC_POSICOES_PRODUTOS_ADICIONADOS}
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
  ${BTN_ADICIONAR_CARRINHO}  Set Variable  (${INVENTORY_BTN_ADICIONAR_CARRINHO})[${INDICE_POSICAO}]
  Click Button  ${BTN_ADICIONAR_CARRINHO}
  Capture Page Screenshot

Capturar os indices dos produtos adicionados
  [Documentation]  Captura os índices dos produtos adicionados ao carrinho e armazena em uma lista global.
  [Arguments]  ${POSICAO}=${EMPTY}  ${INDEX_POSICAO}=${EMPTY}
  IF  '${INDEX_POSICAO}' != '${EMPTY}'
    FOR  ${key}  ${value}  IN  &{DIC_POSICOES_PRODUTOS_ADICIONADOS}
      IF  '${value}' == ''
        Set To Dictionary  ${DIC_POSICOES_PRODUTOS_ADICIONADOS}  ${key}  ${INDEX_POSICAO}
        Log  A posição do produto adicionado foi atualizada: ${DIC_POSICOES_PRODUTOS_ADICIONADOS}.
        Exit For Loop
      END
    END
  END
  Append To List  ${LIST_POSICAO_PRODUTOS_ADICIONADOS}  ${POSICAO}
  Log  O índice do produto adicionado foi na lista ${LIST_POSICAO_PRODUTOS_ADICIONADOS}.

Converter posição escrita para numero
  [Documentation]  Converte a posição escrita do produto para o número correspondente.
  [Arguments]  ${POSICAO}
  IF  '${POSICAO}' in ['outro', "OUTRO"]
    ${NOVA_POSICAO}  Evaluate  random.choice(['primeiro', 'segundo', 'terceiro', 'quarto', 'quinto', 'sexto'])  modules=random
    IF  '${NOVA_POSICAO}' in @{LIST_POSICAO_PRODUTOS_ADICIONADOS}
      ${NOVA_POSICAO}  Evaluate  random.choice(['primeiro', 'segundo', 'terceiro', 'quarto', 'quinto', 'sexto'])  modules=random
      Log  A posição '${POSICAO}' foi convertida para '${NOVA_POSICAO}', pois já existe um produto adicionado na posição especificada.
    ELSE
      Log  A posição '${POSICAO}' foi convertida para '${NOVA_POSICAO}', pois não existe produto adicionado na posição especificada.
    END
    ${POSICAO}  Set Variable  ${NOVA_POSICAO}
  END
    ${VALOR_POSICAO}  Get From Dictionary  ${DIC_POSICOES}  ${POSICAO}
    Log  A posição '${POSICAO}' especificada no argumento de entrada, corresponde ao número: ${VALOR_POSICAO}.
    Capturar os indices dos produtos adicionados  ${POSICAO}  ${VALOR_POSICAO}
  RETURN  ${VALOR_POSICAO}

Remover "${POSICAO}" produto adicionado
  [Documentation]  Remove o produto especificado do carrinho.
  FOR  ${key}  ${value}  IN  &{DIC_POSICOES_PRODUTOS_ADICIONADOS}
    IF  '${key}' == '${POSICAO}'
      ${INDICE_POSICAO}  Set Variable  ${value}
      Log  A posição do produto a ser removido é: ${INDICE_POSICAO}.
      Exit For Loop
    END
  END
  ${BTN_REMOVER_CARRINHO}  Set Variable  (${INVENTORY_BTN_REMOVER_CARRINHO})[${INDICE_POSICAO}]
  Click Button  ${BTN_REMOVER_CARRINHO}
  Capture Page Screenshot
  Limpar variaveis globais

Acessar carrinho e finalizar o pedido
  [Documentation]  Acessa o carrinho de compras e finaliza o pedido.
  Click Link  ${INVENTORY_LINK_CARRINHO}
  Wait Until Element Is Visible  ${CART_BTN_CHECKOUT}
  Capture Page Screenshot

Acessar carrinho e tentar finalizar pedido
  [Documentation]  Acessa o carrinho de compras e tenta finalizar o pedido.
  Acessar carrinho e finalizar o pedido

Limpar variaveis globais
  [Documentation]  Limpa as variáveis globais utilizadas no teste.
  Set Global Variable  @{LIST_POSICAO_PRODUTOS_ADICIONADOS}  @{EMPTY}
  Log  A lista global de posições de produtos adicionados foi limpa.
  FOR  ${key}  ${value}  IN  &{DIC_POSICOES_PRODUTOS_ADICIONADOS}
    IF  '${value}' != ''
      Set To Dictionary  ${DIC_POSICOES_PRODUTOS_ADICIONADOS}  ${key}  ${EMPTY}
    END
    Log  O dicionário global de posições de produtos por ordem de adicionados, foi limpo.
  END