*** Settings ***
Resource  ../main.robot
Documentation  Arquivo de keywords compartilhadas entre os testes

*** Keywords ***
Criar dados de nome, sobrenome e código postal aleatórios
  [Documentation]  Cria dados aleatórios para o nome, sobrenome e código postal.
  ${FIRST_NAME}  FakerLibrary.First Name
  ${LAST_NAME}  FakerLibrary.Last Name
  ${POSTAL_CODE}  FakerLibrary.Postcode
  RETURN  ${FIRST_NAME}  ${LAST_NAME}  ${POSTAL_CODE}

Obter o nome do produto adicionado
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

Obter a posição do produto adicionado
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
    ${VALOR_POSICAO}  Verificar se há produtos já adicionados e atualizar o índice de opções disponíveis  ${VALOR_POSICAO}
    Log  A posição '${POSICAO}' especificada no argumento de entrada, corresponde ao número: ${VALOR_POSICAO}.
    Obter a posição do produto adicionado  ${POSICAO}
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

Verificar se há produtos já adicionados e atualizar o índice de opções disponíveis
  [Documentation]  Verifica se já existem produtos adicionados ao carrinho e atualiza o índice de opções disponíveis, se necessário.
  [Arguments]  ${INDEX_POSICAO}
  ${QUANTIDADE_POSICOES}  Get Length  ${LIST_POSICAO_PRODUTOS_ADICIONADOS}
  IF  ${QUANTIDADE_POSICOES} != 0
    IF  ${INDEX_POSICAO} == 1
      Log  O atual índice de posição escolhido é: "${INDEX_POSICAO}", portanto não há necessidade de ajuste de índice de opções de posições disponíveis.
    ELSE
      Log  Há produtos já adicionados ao carrinho, portanto será necessário ajustar o índice de opções de posições disponíveis.
      ${INDEX_POSICAO_ATUALIZADO}  Evaluate  ${INDEX_POSICAO} - ${QUANTIDADE_POSICOES}  
      #Corrige o índice de produtos (ou posições disponíveis), a partir do primeiro produto já adicionado.
      Log  Há essa quantidade de produtos já adicionados: ${QUANTIDADE_POSICOES}, portanto o índice de opções disponíveis foi atualizado para: ${INDEX_POSICAO_ATUALIZADO}.
      ${INDEX_POSICAO}  Set Variable  ${INDEX_POSICAO_ATUALIZADO}
    END
  ELSE
    Log  Nenhum produto foi adicionado ao carrinho ainda, portanto não há necessidade de ajuste de índice de opções de posições disponíveis.
  END
  RETURN  ${INDEX_POSICAO}

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