# Desafios de Testes Automatizados Web

## Automação Intermediária

Implementação de testes automatizados utilizando **Robot Framework** com o padrão de projeto **Page Object Model (POM)**, para validar o fluxo de compra na aplicação: [SauceDemo](https://www.saucedemo.com/).

**Cenários de Testes:**

- **CT01: Fluxo completo de compra com o usuário `standard_user`**  
  - Realizar o login com o usuário `standard_user`
  - Adicionar o segundo produto no carrinho
  - Adicionar um outro produto no carrinho
  - Remover o primeiro produto adicionado
  - Acessar carrinho e finalizar o pedido

- **CT02: Fluxo completo de compra com o usuário `performance_glitch_user`**  
  - Realizar o login com o usuário `performance_glitch_user`
  - Adicionar o segundo produto no carrinho
  - Adicionar um outro produto no carrinho
  - Remover o primeiro produto adicionado
  - Acessar carrinho e finalizar o pedido

- **CT03: Tentativa de finalização sem produtos no carrinho**  
  - Realizar o login com o usuário `standard_user`
  - Acessar carrinho e tentar finalizar o pedido