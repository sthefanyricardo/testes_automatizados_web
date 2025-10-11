# 🤖 Automação de Testes Web com Robot Framework

![Robot Framework](https://img.shields.io/badge/Robot_Framework-Testing-43B02A?logo=robotframework)
![Selenium](https://img.shields.io/badge/Selenium-43B02A?logo=selenium&logoColor=white)
![CI/CD](https://img.shields.io/github/actions/workflow/status/sthefanyricardo/robot-actions/tests_CI.yml?label=CI/CD&logo=github) 
[![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-222222?logo=github)](https://sthefanyricardo.github.io/robot-actions/)
![Último commit](https://img.shields.io/github/last-commit/sthefanyricardo/robot-actions?label=Último%20commit&style=flat&logo=git&color=orange)

---

## 📖 Sobre o Projeto
Este repositório reúne três projetos de automação de testes web desenvolvidos com Robot Framework, organizados por nível de complexidade: básico, intermediário e avançado.

Cada nível foi planejado para aplicar boas práticas de automação e demonstrar evolução técnica, incluindo:

- [x] **Page Object Model (POM)** - Padrão de projeto para melhor organização e manutenibilidade  
- [x] **Princípio DRY (Don't Repeat Yourself)** - Reutilização de código e keywords
- [x] **Manipulação de Elementos Web** - Uso avançado da SeleniumLibrary
- [x] **Geração de Dados Dinâmicos** - Uso da biblioteca FakerLibrary para testes mais robustos  
- [x] **Modularização e Escalabilidade** - Estrutura preparada para crescimento do projeto
- [x] **CI/CD** - Integração contínua com GitHub Actions
- [X] Disponibilização de relatórios via **GitHub Pages**
- [x] **Documentação Clara** - Código legível e bem documentado

> 🎯 O objetivo é demonstrar uma abordagem **eficiente, escalável e alinhada à Engenharia de Qualidade**, desde a concepção até a entrega contínua dos testes automatizados.

---

## 💡 Motivação e Contexto

Este projeto nasceu a partir de um **desafio técnico para uma vaga de Analista de QA Pleno**, no qual fui avaliada em:
- ✔️ Conceitos fundamentais de testes de software
- ✔️ Elaboração de cenários de teste (BDD/Gherkin)
- ✔️ Automação de testes com Robot Framework

A partir desse case inicial, **aperfeiçoei a solução** e a transformei em um **portfólio completo de automação** para evidenciar **crescimento técnico e maturidade na automação de testes**.

> 💬 Esse projeto não representa somente uma entrega técnica, mas também minha jornada de aprendizado e evolução como profissional de QA/QE.

---

## ✨ Boas Práticas Aplicadas

1. 📐 Page Object Model (POM)
Separação clara entre a lógica de teste e a interação com elementos da página, facilitando **manutenção e escalabilidade**.

2. 🔄 Princípio DRY (Don't Repeat Yourself)
Reutilização máxima de código através de **keywords customizadas**, evitando duplicação e reduzindo esforço de manutenção.

3. 🎲 Dados Dinâmicos
Uso da **FakerLibrary** para geração de dados de teste realistas e variados, aumentando a **cobertura dos testes**.

4. 🧩 Modularização
Organização do código em camadas (**tests**, **pages**, **resources**), promovendo clareza e facilitando colaboração.

5. 📝 Nomenclatura Clara
Nomes descritivos para testes, keywords e variáveis, tornando o código **auto-explicativo**.

6. 📚 Documentação
Cada keyword e teste possui documentação clara sobre seu **propósito e funcionamento**.

---

## 📈  Competências Desenvolvidas
- [x] Automação de testes web com **Robot Framework**
- [x] Implementação do padrão de projeto (POM)**
- [x] Escrita de código **limpo, reutilizável e manutenível**
- [x] Uso de bibliotecas externas (**Faker**, **String Library**)
- [x] Versionamento de código com **Git**
- [x] Repositórios remoto com **GitHub**
- [x] Implementação de **CI/CD** com GitHub Actions
- [x] Disponibilização de relatórios via **GitHub Pages**
- [x] Uso do **rebot** para manipular execuções em múltiplos navegadores
- [x] **Documentação técnica** completa
  
---

## 🔄 CI/CD e Relatórios

Este projeto implementa **integração contínua** usando **GitHub Actions** para garantir a qualidade do código:

### 🎯 Pipeline de CI/CD

- ✅ **Execução automática** dos testes a cada push/pull request
- ✅ **Testes em múltiplos navegadores** (Chrome, Firefox, Edge)
- ✅ **Geração automática de relatórios**
- ✅ **Publicação no GitHub Pages**

### 📊 Visualizar Relatórios Online

Os relatórios de execução dos testes estão disponíveis publicamente:

🔗 **[Acessar Relatórios no GitHub Pages](https://sthefanyricardo.github.io/robot-actions/)**

---

## Detalhes dos Projetos
### 1️⃣ Nível Básico: Gerenciador de Atividades - [TodoMVC](https://todomvc.com/)

<details>
<summary>Clique aqui para expandir as informações</summary>
  
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

</details>

📂 **[Acessar Projeto Básico](./automacao_basico)**

---

### 2️⃣ Nível Intermediário: Sistema de Vendas - [SauceDemo](https://www.saucedemo.com/)

<details>
<summary>Clique aqui para expandir as informações</summary>
  
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

</details>

📂 **[Acessar Projeto Intermediário](./automacao_intermediario)**

---

### 3️⃣ Nível Avançado: Sistema Bancário - [TestFire](https://demo.testfire.net/login.jsp)

<details>
<summary>Clique aqui para expandir as informações</summary>
  
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

</details>

📂 **[Acessar Projeto Avançado](./automacao_avancado)**

---

## 🛠️ Tecnologias, Ferramentas e Requisitos
Este projeto foi desenvolvido com as seguintes ferramentas e tecnologias. Certifique-se de que sua máquina atende aos requisitos abaixo para executar os testes.

<details>
<summary>Clique aqui para expandir as informações</summary>
  
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

</details>

---

## 📁 Estrutura do Repositório
O repositório está organizado em pastas, cada uma correspondente a um nível de complexidade:

<details>
<summary>▶️ Ver estrutura de diretórios</summary>
  
```
📦 testes_automatizados_web
┣ 📂 automacao_basico/          # Contém os testes de interface web do nível básico
┃ ┣ 📂 tests/                   # Arquivos de teste
┃ ┣ 📂 resources/               # Keywords e variáveis
┃ ┣ 📂 pages/                   # Page Objects
┃ ┗ 📄 README.md                # Documentação completa do projeto básico
┃
┣ 📂 automacao_intermediario/   # Contém os testes de interface web do nível intermediário
┃ ┣ 📂 tests/                   # Arquivos de teste
┃ ┣ 📂 resources/               # Keywords e variáveis
┃ ┣ 📂 pages/                   # Page Objects
┃ ┗ 📄 README.md                # Documentação completa do projeto intermediário
┃
┣ 📂 automacao_avancado/        # Contém os testes de interface web do nível avançados
┃ ┣ 📂 tests/                   # Arquivos de teste
┃ ┣ 📂 resources/               # Keywords e variáveis
┃ ┣ 📂 pages/                   # Page Objects
┃ ┗ 📄 README.md                # Documentação completa do projeto avançado
┃
┣ 📂 .github/                   # Configurações GitHub Actions
┃ ┗ 📂 workflows/               # Workflows de CI/CD
┃
┣ 📄 .gitignore             # Arquivo que lista os diretórios e arquivos a serem ignorados pelo Git.
┗ 📄 README.md              # Este arquivo - Documentação principal do repositório
```

</details>

---

<div align="center">

### Sthefany A. Ricardo

**Analista de QA** | **Analista de Automação de Testes**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sthefanyricardo/)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:sthefannyricardo@gmail.com)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/sthefanyricardo)
[![Portfolio](https://img.shields.io/badge/Portfolio-D14836?style=for-the-badge&logo=todoist&logoColor=white)](https://sthefanyricardo.github.io/robot-actions/)

</div>

---

<div align="center">

**Feito com ❤️ e muito ☕**

*Última atualização: ![Último commit](https://img.shields.io/github/last-commit/sthefanyricardo/robot-actions?label=Último%20commit&style=flat&logo=git&color=orange)*

⭐ Se este projeto foi útil para você, considere dar uma estrela!

</div>
