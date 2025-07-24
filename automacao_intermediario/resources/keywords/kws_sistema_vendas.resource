*** Settings ***
Resource  ../main.robot

*** Keywords ***
Acessar página home do site
  [Documentation]  Acessa a página inicial do site de testes (https://www.saucedemo.com/)
  [Arguments]  ${URL_HOME}=${SAUCE_DEMO_URL}
  Go To  ${URL_HOME} 
  Title Should Be  ${HOME_TITLE}
  Capture Page Screenshot