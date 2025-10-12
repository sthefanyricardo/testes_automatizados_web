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
    Open Browser  about:blank  ${BROWSER}
  END
  Maximize Browser Window

Especificar diretório para screenshots
  [Documentation]  Especifica o diretório onde os screenshots serão salvos
  Set Screenshot Directory  ./resultados_${BROWSER}