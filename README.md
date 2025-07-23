# Desafios de Testes Automatizados Web

### Automação Básica

Desenvolva casos de teste automatizados utilizando Robot Framework para validar as funcionalidades essenciais de um gerenciador de tarefas (To-Do).

**Cenários de Teste:**

- **Cenário 1:**  
  - Adicionar três tarefas  
  - Marcar a segunda tarefa como concluída  
  - Filtrar e validar a exibição das tarefas concluídas

- **Cenário 2:**  
  - Adicionar quatro tarefas  
  - Marcar a terceira tarefa como concluída  
  - Excluir a terceira tarefa  
  - Filtrar e validar a exibição das tarefas concluídas

- **Cenário 3:**  
  - Adicionar quatro tarefas  
  - Marcar a quarta tarefa como concluída  
  - Limpar todas as tarefas concluídas e validar a remoção

---

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

---

### Automação Avançada

Desenvolva scripts de automação com Robot Framework para validar operações bancárias no sistema [demo.testfire.net](https://demo.testfire.net/login.jsp) (usuário e senha: `admin`).

**Cenários de Teste:**

- **Cenário 1:**  
  - Realizar login  
  - Efetuar transferência da conta 800000 Corporate para a conta 800001 Checking  
  - Acessar o extrato da conta 800001 Checking  
  - Validar o registro correto da transferência e seus detalhes  
  - Verificar a atualização do saldo da conta