***Settings***
Documentation  Este arquivo contém os casos de teste automatizados para o sistema bancário (https://demo.testfire.net/login.jsp) com os dados de acesso usuário e senha: admin, incluindo casos de testes de login, transferência, consulta de extratos e verificação de saldo.
Resource  ../resources/main.robot
Suite Setup  Abrir o navegador
Suite Teardown  Fechar o navegador

***Test Cases***
CT01: Transferência bancária com validação de saldo e extrato
  [Documentation]  Teste que verifica a realização de uma transferência bancária entre contas cadastradas, validando o saldo e o extrato da transação.
  [Tags]  CT01  LOGIN_TRANSFERENCIA
  [Setup]  Run Keywords  Acessar página home do site  ${DEMO_TEST_FIRE_URL}
  ...  AND  Verificar o saldo atual da conta  ${CONTA_DESTINO}
  Dado que realizo o login com usuário "${LOGIN_USER}" e senha "${LOGIN_PASSWORD}" na página inicial do sistema bancário
  Quando realizo uma transferência da conta "${CONTA_ORIGEM}" para a conta "${CONTA_DESTINO}"
  Então acesso o resumo da conta "${CONTA_DESTINO}"
  E verifico se a transferência foi listada corretamente
  E verifico se o saldo da conta "${CONTA_DESTINO}" foi atualizado corretamente