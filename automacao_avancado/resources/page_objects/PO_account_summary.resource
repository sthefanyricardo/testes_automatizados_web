*** Settings ***
Documentation  Este arquivo contém os elementos da página de resumo da conta do sistema bancário.

*** Variables ***
${ACCOUNT_HISTORY_TITLE}  //h1[contains(text(), 'Account History - ')]

${TITLE_TABLE_RECENT_TRANSACTIONS}  //b[text()="10 Most Recent Transactions"]

${TABLE_RECENT_TRANSACTIONS}  //div[@id="recent"]/table/tbody

${TABLE_BALANCE_DETAIL}  //td[contains(text(), 'Available balance')]/following-sibling::td

${TABLE_RECENT_TRANSACTIONS}  //div[@id="recent"]/table/tbody