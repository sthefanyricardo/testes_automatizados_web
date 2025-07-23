# Desafios de Testes Automatizados Web

### Automação Intermediária

Implemente scripts de automação com Robot Framework para validar o fluxo de compra em um sistema de vendas ([saucedemo.com](https://www.saucedemo.com/)), utilizando o padrão de projeto Page Object Model (POM).

**Cenários de Teste:**

- **Cenário 1:**  
  - Login com usuário `standard_user`  
  - Adicionar o segundo produto ao carrinho  
  - Adicionar um produto adicional ao carrinho  
  - Remover o primeiro produto adicionado  
  - Acessar o carrinho e finalizar o pedido

- **Cenário 2:**  
  - Login com usuário `performance_glitch_user`  
  - Adicionar o segundo produto ao carrinho  
  - Adicionar um produto adicional ao carrinho  
  - Remover o primeiro produto adicionado  
  - Acessar o carrinho e finalizar o pedido

- **Cenário 3:**  
  - Login com usuário `standard_user`  
  - Acessar o carrinho e tentar finalizar o pedido