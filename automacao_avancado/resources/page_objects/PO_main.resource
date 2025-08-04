*** Settings ***
Documentation  Este arquivo contém os elementos da página principal do sistema bancário.

*** Variables ***
${MAIN_TITLE}  //h1[contains(text(), 'Hello Admin User')]

${MAIN_FIELD_LIST_ACCOUNTS}  //select[@id='listAccounts']

${MAIN_BUTTON_GET_ACCOUNT}  id=btnGetAccount

${MAIN_LINK_TRANSFER_FUNDS}  id=MenuHyperLink3  #//a[@id='MenuHyperLink3']

${MAIN_LINK_ACCOUNT_SUMMARY}  id=MenuHyperLink1  #//a[@id='MenuHyperLink1']