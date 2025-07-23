*** Settings ***
Resource  ../main.robot

*** Keywords ***
Acessar página home do site
  [Documentation]  Acessa a página inicial do site de testes (https://demo.testfire.net/login.jsp)
  [Arguments]  ${URL_HOME}=${DEMO_TEST_FIRE_URL}
  Go To  ${URL_HOME} 
  Title Should Be  ${HOME_TITLE}
  Capture Page Screenshot