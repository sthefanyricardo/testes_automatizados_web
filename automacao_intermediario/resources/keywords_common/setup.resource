*** Settings ***
Documentation  Arquivo principal de inicialização dos testes (aqui estarão todas as keywords de inicialização)
Resource  ../main.robot

*** Variables ***
${BROWSER}  chrome
${HEADLESS}  ${false}

*** Keywords ***
#### Setup e Teardown
Abrir o navegador
  [Documentation]  Abre o navegador (Browser) com as opções definidas
  IF  '${HEADLESS}' == 'True' or '${HEADLESS}' == 'true'
    Open Browser  about:blank  ${BROWSER}  options=add_argument("--headless=new")
  ELSE
    Open Browser  about:blank  ${BROWSER}  options=add_argument("--incognito")
  END
  Maximize Browser Window