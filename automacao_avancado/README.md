# Desafios de Testes Automatizados Web

## Automação Avançada

Implementação de testes automatizados utilizando **Robot Framework** com o padrão de projeto **Page Object Model (POM)**, para validar funcionalidades bancárias no sistema [TestFire](https://demo.testfire.net/login.jsp), com usuário e senha: **admin**.

**Cenário de Teste:**

- **CT01: Validação de transferência bancária e saldo atualizado**  
  - Realizar o login  `(usuário e senha: admin)`
  - Realizar uma transferência da conta 800000 Corporate para a conta 800001 Checking 
  - Acessar o resumo da conta 800001 Checking
  - Deve listar corretamente a transferência e os dados da mesma
  - Deve ter atualizado o Saldo da Conta