*** Settings ***
Documentation  Este arquivo contém os elementos da página de transferência de fundos do sistema bancário.

*** Variables ***
${TRANSFER_TITLE}  //h1[text()="Transfer Funds"]

${TRANSFER_FIELD_FROM_ACCOUNT}  id=fromAccount

${TRANSFER_FIELD_TO_ACCOUNT}  id=toAccount

${TRANSFER_FIELD_AMOUNT_TRANSFER}  id=transferAmount

${TRANSFER_BUTTON_TRANSFER_MONEY}  id=transfer

${TRANSFER_SUCCESS_MESSAGE}  //span[contains(text(),'{valor_transferencia} was successfully transferred')]