*** Variables ***
${TRANSFER_TITLE}  //h1[text()="Transfer Funds"]

${TRANSFER_FIELD_FROM_ACCOUNT}  id=fromAccount

${TRANSFER_FIELD_TO_ACCOUNT}  id=toAccount

${TRANSFER_FIELD_AMOUNT_TRANSFER}  id=transferAmount

${TRANSFER_BUTTON_TRANSFER_MONEY}  id=transfer

${TRANSFER_SUCCESS_MESSAGE}  //span[contains(text(),'was successfully transferred from Account 800000 into Account 800001')]  #//span[contains(text(),'25000.0 was successfully transferred from Account 800000 into Account 800001 at 7/23/25 6:58 PM.')]