*** Settings ***
Documentation  Este arquivo contém os elementos da página principal do sistema bancário.

*** Variables ***
${MAIN_TITLE}  //h1[contains(text(), 'Hello Admin User')]

${MAIN_FIELD_LIST_ACCOUNTS}  //select[@id='listAccounts']

${MAIN_BUTTON_GET_ACCOUNT}  id=btnGetAccount

&{MAIN_MENU_LINKS}
...  account_summary=id=MenuHyperLink1
...  recent_transactions=id=MenuHyperLink2
...  transfer_funds=id=MenuHyperLink3
...  search_news_articles=id=MenuHyperLink4
...  customize_site_language=id=MenuHyperLink5
