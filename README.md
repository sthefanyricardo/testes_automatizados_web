# 🤖 Automação de Testes Web com Robot Framework

![Robot Framework](https://img.shields.io/badge/Robot_Framework-Testing-43B02A?logo=robotframework)
![Selenium](https://img.shields.io/badge/Selenium-43B02A?logo=selenium&logoColor=white)
![CI/CD](https://img.shields.io/github/actions/workflow/status/sthefanyricardo/robot-actions/tests_CI.yml?label=CI/CD&logo=github) 
[![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-flatlogo=github)](https://sthefanyricardo.github.io/robot-actions/)
![Último commit](https://img.shields.io/github/last-commit/sthefanyricardo/robot-actions?label=Último%20commit&style=flat&logo=git)

---

## 📖 Sobre o Projeto
Este repositório reúne três projetos de automação de testes web desenvolvidos com o **Robot Framework**, organizados por nível de complexidade: básico, intermediário e avançado.

Os projetos foram criados com foco em **boas práticas de automação**, incluindo:
- [x] **Page Object Model (POM)** - Padrão de projeto para melhor organização e manutenibilidade  
- [x] **Princípio DRY (Don't Repeat Yourself)** - Reutilização de código e keywords
- [x] Manipulação de elementos web com SeleniumLibrary
- [x] **Geração de Dados Dinâmicos** - Uso da biblioteca FakerLibrary para testes mais robustos  
- [x] **Modularização e Escalabilidade** - Estrutura preparada para crescimento do projeto  
- [x] **Documentação Clara** - Código legível e bem documentado

O objetivo além de demonstrar capacidade técnica na criação e manutenção de suítes de testes é demonstrar uma abordagem eficaz e escalável para a validação de sistemas, com estruturas organizadas, legíveis e alinhadas aos princípios da Engenharia de Qualidade.

---

## 🎯 Origem e Motivação

Este projeto nasceu a partir de um **desafio técnico para uma vaga de Analista de QA Pleno**, no qual fui avaliada em:
- ✔️ Conceitos fundamentais de testes de software
- ✔️ Elaboração de cenários de teste (BDD/Gherkin)
- ✔️ Automação de testes com Robot Framework

A partir desse case inicial, **evoluí a solução** e a transformei em um **portfólio completo de automação**, dividido estrategicamente em três níveis de complexidade crescente para demonstrar domínio progressivo das ferramentas e técnico.

Este desafio foi uma excelente oportunidade para aplicar e aprimorar minhas habilidades em **Robot Framework**, demonstrando minha capacidade de criar soluções de teste escaláveis e de fácil manutenção.

---

## Detalhes dos Projetos
### 1️⃣ Nível Básico: Gerenciador de Atividades - [TodoMVC](https://todomvc.com/)

**Objetivo:** Introdução aos fundamentos do Robot Framework com testes de interface web.

#### 📋 Cenários Implementados:
- ✅ Adição de múltiplas atividades
- ✅ Marcação de atividades como concluídas
- ✅ Filtragem e limpeza de atividades concluídas
- ✅ Exclusão de atividades

#### 🎓 Conceitos Aplicados:
- [x] Estruturação básica de testes com Robot Framework
- [x] Manipulação de elementos web com SeleniumLibrary
- [x] Page Object Model (POM) para a página principal do sistema
- [x] Tratamento de elementos (locators) dinâmicos
- [x] Validação de funcionalidades básicas de UI
- [x] Modularização completa do código
- [x] DRY e reutilização máxima de keywords
- [x] Geração de dados dinâmicos com String Library
- [x] Documentação Clara
  
📂 **[Acessar Projeto Básico](./automacao_basico)**

---

### 2️⃣ Nível Intermediário: Sistema de Vendas - [SauceDemo](https://www.saucedemo.com/)

**Objetivo:** Implementar padrão POM completo com dados dinâmicos e múltiplos cenários de usuário.

#### 📋 Cenários Implementados:
- ✅ Login com diferentes perfis de usuário (`standard_user`, `performance_glitch_user`)
- ✅ Manipulação do carrinho (adição e remoção de produtos)
- ✅ Validar fluxo completo de compra (checkout)
- ✅ Testar comportamento com carrinho vazio no checkout
- ✅ Validar cálculos de subtotal e total

#### 🎓 Conceitos Aplicados:
- [x] Manipulação de elementos web com SeleniumLibrary
- [x] Tratamento de elementos (locators) dinâmicos
- [x] POM avançado com múltiplas páginas e fluxos complexos
- [x] Geração de massa de dados realista com Faker Library
- [x] Modularização completa do código
- [x] DRY e reutilização máxima de keywords
- [x] Testes data-driven (múltiplos usuários)
- [x] Documentação Clara

📂 **[Acessar Projeto Intermediário](./automacao_intermediario)**

---

### 3️⃣ Nível Avançado: Sistema Bancário - [TestFire](https://demo.testfire.net/login.jsp)

**Objetivo:** Automação de cenários complexos com validações de dados e transações financeiras.

#### 📋 Cenários Implementados:
- ✅ Login no sistema bancário
- ✅ Transferência entre contas com validação de dados
- ✅ Verificação de extrato de transações
- ✅ Listagem e validação de histórico de transações
- ✅ Validação de saldo atualizado após operações

#### 🎓 Conceitos Aplicados:
- [x] Manipulação de elementos web com SeleniumLibrary
- [x] POM avançado com múltiplas páginas e fluxos complexos
- [x] Geração de massa de dados realista com Faker Library
- [x] Validações de dados financeiros e cálculos
- [x] Modularização completa do código
- [x] Tratamento de elementos dinâmicos
- [x] DRY e reutilização máxima de keywords
- [x] Documentação Clara

📂 **[Acessar Projeto Avançado](./automacao_avancado)**

---

## 🛠️ Tecnologias, Ferramentas e Requisitos
Este projeto foi desenvolvido com as seguintes ferramentas e tecnologias. Certifique-se de que sua máquina atende aos requisitos abaixo para executar os testes.

- **Linguagem e Frameworks:**
  - **Python:** Linguagem de programação base para o Robot Framework e suas bibliotecas. [Download Versão 3.13.2 ou superior](https://www.python.org/downloads/)
  - **Robot Framework:** Framework de automação de testes com sintaxe baseada em palavras-chave [Download Versão 7.3.2 ou superior](https://robotframework.org/?tab=1#getting-started)
  - **SeleniumLibrary:** Biblioteca essencial para a automação de testes web. [Documentação](https://robotframework.org/?tab=libraries#resources)
  - **Faker Library:** Biblioteca utilizada para a geração de massa de dados dinâmicos. [Documentação](https://marketsquare.github.io/robotframework-faker/)

- **Ferramentas de Desenvolvimento e Controle de Versão:**
  - **Visual Studio Code:** IDE utilizada para o desenvolvimento dos testes. [Download VS Code](https://code.visualstudio.com/download)
  - **Git** Utilizado para o controle de versão. [Download Git](https://git-scm.com/downloads)
  - **GitHub:** Utilizado para o compartilhamento de código. [GitHub](https://github.com)

- **Configuração do Ambiente de Execução:**
  - **Navegador:** Um navegador instalado (como Chrome, Microsoft Edge ou Firefox).
  - **WebDriver:** O WebDriver compatível com a versão do seu navegador deve ser baixado e adicionado ao PATH do sistema.
    - [ChromeDriver para Google Chrome](https://googlechromelabs.github.io/chrome-for-testing/)
    - [EdgeDriver para o Microsoft Edge](https://developer.microsoft.com/pt-br/microsoft-edge/tools/webdriver)
    - [GeckoDriver para o Firefox](https://github.com/mozilla/geckodriver/releases)

---

## 📁 Estrutura do Repositório
O repositório está organizado em pastas, cada uma correspondente a um nível de complexidade:

```
📦 robot-framework-portfolio
┣ 📂 automacao_basico/          # Contém os testes de interface web do nível básico
┃ ┣ 📂 tests/                   # Arquivos de teste
┃ ┣ 📂 resources/               # Keywords e variáveis
┃ ┣ 📂 pages/                   # Page Objects
┃ ┗ 📄 README.md                # Documentação principal do repositório
┃
┣ 📂 automacao_intermediario/   # Contém os testes de interface web do nível intermediário
┃ ┣ 📂 tests/                   # Arquivos de teste
┃ ┣ 📂 resources/               # Keywords e variáveis
┃ ┣ 📂 pages/                   # Page Objects
┃ ┗ 📄 README.md                # Documentação principal do repositório
┃
┣ 📂 automacao_avancado/        # Contém os testes de interface web do nível avançados
┃ ┣ 📂 tests/                   # Arquivos de teste
┃ ┣ 📂 resources/               # Keywords e variáveis
┃ ┣ 📂 pages/                   # Page Objects
┃ ┗ 📄 README.md                # Documentação principal do repositório
┃
┣ 📄 .gitignore             # Arquivo que lista os diretórios e arquivos a serem ignorados pelo Git.
┗ 📄 README.md              # Este arquivo - Documentação principal do repositório
```

---

<div align="center">

### Sthefany A. Ricardo

**Analista de QA** | **Analista de Automação de Testes**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sthefanyricardo/)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:sthefannyricardo@gmail.com)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/seu-usuario)

</div>

---

<div align="center">

**Feito com ❤️ e muito ☕**

*Última atualização: ![Último commit](https://img.shields.io/github/last-commit/sthefanyricardo/robot-actions?label=Último%20commit&style=flat&logo=git)*

⭐ Se este projeto foi útil para você, considere dar uma estrela!

</div>
