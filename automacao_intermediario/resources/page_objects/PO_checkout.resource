*** Variables ***
${FIRST_CHECKOUT_TITLE}  //span[@data-test='title'][contains(text(), 'Checkout: Your Information')]

${CHECKOUT_FIELD_FIRST_NAME}  id=first-name

${CHECKOUT_FIELD_LAST_NAME}  id=last-name

${CHECKOUT_FIELD_POSTAL_CODE}  id=postal-code

${CHECKOUT_BTN_CONTINUE}  id=continue

${SECOND_CHECKOUT_TITLE}  //span[@data-test='title'][contains(text(), 'Checkout: Overview')]

${CHECKOUT_BTN_FINISH}  id=finish

${CHECKOUT_BTN_CANCEL}  id=cancel

${CHECKOUT_LBL_FINISH}  //span[@data-test='title'][contains(text(), 'Checkout: Complete')]

${CHECKOUT_LBL_ORDER_COMPLETE}  //h2[@data-test='complete-header'][contains(text(), 'Thank you for your order!')]

${CHECKOUT_BTN_BACK_HOME}  id=back-to-products