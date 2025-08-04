# Projetos de Testes Automatizados com Robot Framework

Este repositório reúne três projetos de automação de testes web desenvolvidos com o **Robot Framework**, organizados por nível de complexidade: básico, intermediário e avançado.

Os projetos foram criados com foco em **boas práticas de automação**, como o padrão **Page Object Model (POM)** e o princípio **DRY (Don't Repeat Yourself)**. O objetivo é demonstrar uma abordagem eficaz e escalável para a validação de sistemas, com estruturas organizadas, legíveis e alinhadas aos princípios da Engenharia de Qualidade.

## Detalhes dos Projetos

### 1. Automação Básico: Gerenciador de Atividades [TodoMVC](https://todomvc.com/)
Este projeto foca em testes de funcionalidades básicas para um gerenciador de atividades, demonstrando as capacidades iniciais do Robot Framework para automação de UI, com cenários que incluem:
- Adição de múltiplas atividades
- Marcação de atividades como concluídas
- Filtragem e limpeza de atividades concluídas
- Exclusão de atividades

[Detalhes do projeto](./automacao_basico)

---

### 2. Automação Intermediário: Sistema de Vendas [SauceDemo](https://www.saucedemo.com/)
Este projeto utiliza o site e implementa o padrão de design Page Object Model (POM) para uma automação mais robusta e de fácil manutenção, com cenários que incluem:
- Login com diferentes usuários (standard_user e performance_glitch_user)
- Manipulação do carrinho (adição, remoção de produtos)
- Finalização de pedidos
- Validação dos fluxos de compra

[Detalhes do projeto](./automacao_intermediario)

---

### 3. Automação Avançado: Sistema Bancário [TestFire](https://demo.testfire.net/login.jsp)
Este projeto demonstra a automação de funcionalidades mais complexas em um sistema bancário, incluindo transferências e verificação de saldos, com cenários que incluem:
- Login seguro
- Transferência entre contas
- Verificação de extrato e listagem de transações
- Validação precisa do saldo atualizado após transações

[Detalhes do projeto](./automacao_avancado)

---

## 🛠️ Tecnologias, Ferramentas e Requisitos

**Linguagem e Framework**
- Python
- Robot Framework
- SeleniumLibrary
- Faker Library

**Ambiente de Desenvolvimento**
- Visual Studio Code
- Git e GitHub

**Requisitos**
- Python 3.13.2 ou superior [Download](https://www.python.org/downloads/)
- Robot Framework 7.3.2 ou superior [Documentação](https://robotframework.org/?tab=1#getting-started)
- Git [Download](https://git-scm.com/downloads)
- Visual Studio Code [VS Code Download](https://code.visualstudio.com/download)
- Um navegador (como Chrome, Microsoft Edge, Firefox, etc.) instalado
- WebDriver compatível com a versão do seu navegador e configurado no PATH do sistema:
  - ChromeDriver para Google Chrome [Download](https://googlechromelabs.github.io/chrome-for-testing/)
  - EdgeDriver para o Microsoft Edge [Download](https://developer.microsoft.com/pt-br/microsoft-edge/tools/webdriver)
  - Geckodriver para o FireFox [Download](https://github.com/mozilla/geckodriver/releases)

---

## 📁 Estrutura do Repositório
O repositório está organizado em pastas, cada uma correspondente a um nível de complexidade:

- **automacao_avancado/** → Contém os testes avançados de interface usando **SeleniumLibrary** e **Faker Library**, aplicados com padrão de projeto Page Object Model (POM).
- **automacao_basico/** → Contém os testes básicos de interface web usando **SeleniumLibrary**.  
- **automacao_intermediario/** → Contém os testes intermediários de interface usando **SeleniumLibrary** e **Faker Library**, aplicados com padrão de projeto Page Object Model (POM).
- **.gitignore** → Arquivo que lista os diretórios e arquivos a serem ignorados pelo Git.
- **README.md** → Documentação geral com instruções de instalação, execução e visão geral dos testes.

---

## 🙋‍♀️ Autora
Feito com ❤️ por **Sthefany A. Ricardo**. 

📧 sthefannyricardo@gmail.com 

🔗 [LinkedIn](https://www.linkedin.com/in/sthefanyricardo/) 

📅 Última atualização: **Agosto de 2025**. 