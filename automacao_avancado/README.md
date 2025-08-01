# Desafios de Testes Automatizados Web

## Automação Avançada

Implemetação dos casos de testes automatizados com **Robot Framework** e o padrão de projeto **Page Object Model (POM)**, para validar operações bancárias no sistema [testfire](https://demo.testfire.net/login.jsp), com o usuário e senha: **admin**.

**Cenário de Teste:**

- **Cenario 1: Realizar o login, uma transferência, acessar o resumo da conta e verificar a transferência e o saldo**  
  - Realizar o login  `(usuário e senha: admin)`
  - Realizar uma transferência da conta 800000 Corporate para a conta 800001 Checking 
  - Acessar o resumo da conta 800001 Checking
  - Deve listar corretamente a transferência e os dados da mesma
  - Deve ter atualizado o Saldo da Conta