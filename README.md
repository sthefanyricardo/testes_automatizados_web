# Projetos de Testes Automatizados com Robot Framework

Este repositório contém uma série de projetos de automação de testes desenvolvidos utilizando o Robot Framework. Os testes abrangem diferentes níveis de complexidade (Básico, Intermediário e Avançado) e demonstram a aplicação de boas práticas, como o Page Object Model (POM).

---

## Detalhes dos Projetos

### 1. Automação Básico: Gerenciador de Atividades [TodoMVC](https://todomvc.com/)
Este projeto foca em testes de funcionalidades básicas para um gerenciador de atividades, demonstrando as capacidades iniciais do Robot Framework para automação de UI, com cenários que incluem:
- Adição de múltiplas atividades
- Marcação de atividades como concluídas
- Filtragem e limpeza de atividades concluídas
- Exclusão de atividades

[Cenários detalhados e código](./automacao_basico)

---

### 2. Automação Intermediário: Sistema de Vendas [SauceDemo](https://www.saucedemo.com/)
Este projeto utiliza o site e implementa o padrão de design Page Object Model (POM) para uma automação mais robusta e de fácil manutenção, com cenários que incluem:
- Login com diferentes usuários (standard_user e performance_glitch_user)
- Manipulação do carrinho (adição, remoção de produtos)
- Finalização de pedidos
- Validação dos fluxos de compra

[Cenários detalhados e código](./automacao_intermediario)

---

### 3. Automação Avançado: Sistema Bancário [TestFire](https://demo.testfire.net/login.jsp)
Este projeto demonstra a automação de funcionalidades mais complexas em um sistema bancário, incluindo transferências e verificação de saldos, com cenários que incluem:
- Login seguro
- Transferência entre contas
- Verificação de extrato e listagem de transações
- Validação precisa do saldo atualizado após transações

[Cenários detalhados e código](./automacao_avançado)

---