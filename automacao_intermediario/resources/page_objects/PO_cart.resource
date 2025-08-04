*** Settings ***
Documentation  Este arquivo contém as variáveis de configuração e elementos da página do carrinho do sistema de vendas (https://www.saucedemo.com/).

*** Variables ***
${CART_TITLE}  //span[@data-test='title'][contains(text(), 'Your Cart')]

${CART_BTN_CHECKOUT}  id=checkout