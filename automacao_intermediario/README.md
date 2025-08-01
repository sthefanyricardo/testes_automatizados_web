# Desafios de Testes Automatizados Web

## Automação Intermediária

Implementação dos scripts de testes automatizados com **Robot Framework** e o padrão de projeto **Page Object Model (POM)**, para validar o fluxo de compra na aplicação: [saucedemo](https://www.saucedemo.com/).

**Cenários de Testes:**

- **Cenario 1: Login, adição, remoção de produtos e, finalização de pedido**  
  - Realizar o login com o usuário `standard_user`
  - Adicionar o segundo produto no carrinho
  - Adicionar um outro produto no carrinho
  - Remover o primeiro produto adicionado
  - Acessar carrinho e finalizar o pedido

- **Cenario 2: Login, adição, remoção de produtos e, finalização de pedido**  
  - Realizar o login com o usuário `performance_glitch_user`
  - Adicionar o segundo produto no carrinho
  - Adicionar um outro produto no carrinho
  - Remover o primeiro produto adicionado
  - Acessar carrinho e finalizar o pedido


- **Cenario 3: Login e tentativa de finalização de pedido sem produtos no carrinho**  
  - Realizar o login com o usuário `standard_user`
  - Acessar carrinho e tentar finalizar o pedido