***Settings***
Documentation  Este arquivo contém os casos de teste automatizados para o sistema bancário (https://demo.testfire.net/login.jsp) com os dados de acesso usuário e senha: admin, incluindo casos de testes de login, transferência, consulta de extratos e verificação de saldo.
Resource  ../resources/main.robot
Suite Setup  Abrir o navegador
Suite Teardown  Fechar o navegador

***Test Cases***
Cenario 1: Realizar o login, uma transferência, acessar o resumo da conta e verificar a transferência e o saldo
  [Documentation]  Teste que verifica o login no sistema bancário, realiza uma transferência e consulta o saldo da conta.
  [Tags]  CT01  LOGIN_TRANSFERENCIA
  [Setup]  Run Keywords  Acessar página home do site  ${DEMO_TEST_FIRE_URL}
  ...  AND  Verificar o saldo atual da conta  800001 Checking
  Dado que realizo o login com usuário "admin" e senha "admin" na página inicial do sistema bancário
  Quando realizo uma transferência da conta "800000 Corporate" para a conta "800001 Checking"
  Então acesso o resumo da conta "800001 Checking"
  E verifico se a transferência foi listada corretamente
  E verifico se o saldo da conta "800001 Checking" foi atualizado corretamente
  