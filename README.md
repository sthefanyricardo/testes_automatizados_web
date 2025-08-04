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

## 🛠️ Tecnologias Utilizadas

- **Python:** Linguagem de programação base para o Robot Framework e suas bibliotecas.
- **Git e GitHub:** Para controle de versão e compartilhamento de código.
- **Visual Studio Code:** IDE utilizada para o desenvolvimento dos testes.
- **Robot Framework:** Framework de automação de testes com sintaxe baseada em palavras-chave.
- **SeleniumLibrary:** Biblioteca essencial para a automação de testes web.
- **Faker Library:** Biblioteca utilizada para a geração de massa de dados dinâmicos.

---

## 📁 Conteúdo do Repositório 
1. **Estrutura do Repositório e Descrição das Pastas:**
O repositório está organizado em pastas, cada uma correspondente a um nível de complexidade:

- **automacao_avancado/** → Contém os testes avançados de interface usando **SeleniumLibrary** e **Faker Library**, aplicados com padrão de projeto Page Object Model (POM).
- **automacao_basico/** → Contém os testes básicos de interface web usando **SeleniumLibrary**.  
- **automacao_intermediario/** → Contém os testes intermediários de interface usando **SeleniumLibrary** e **Faker Library**, aplicados com padrão de projeto Page Object Model (POM).
- **README.md** → Documentação geral com instruções de instalação, execução e visão geral dos testes.  

---

## 🤖 Como Executar os Testes
### 🔧 Pré-requisitos (Configuração do Ambiente)
  1. **Instalação do Python:**
     - Certifique-se de ter o Python instalado (versão 3.7 ou superior). [Download do Python](https://www.python.org/downloads/)
  2. **Instalação do WebDriver:**
     - Baixe o WebDriver correspondente ao seu navegador (ex: [ChromeDriver para Google Chrome](https://googlechromelabs.github.io/chrome-for-testing/) ou [EdgeDriver para o Microsoft Edge](https://developer.microsoft.com/pt-br/microsoft-edge/tools/webdriver)).
     - Certifique-se de que o caminho para as pastas e/ou arquivos do WebDriver, esteja no PATH do sistema. 
  3. **Instalação das dependências do projeto:**
     - Abra o terminal na raiz do projeto e execute o seguinte comando:
       ```bash
       pip install -r requirements.txt
       ```
       Isso instalará todas as dependências listadas no arquivo.
     - **Verifique a instalação:**
       Após a instalação, você pode verificar se tudo está funcionando corretamente executando um dos testes do seu projeto.
---

### 📊 Executando os Testes
1. Clone o repositório:
```bash
   git clone https://github.com/sthefanyricardo/testes_automatizados_web.git
```
2. Pelo terminal ou IDE, navegue até a pasta desejada do projeto, **como no exemplo abaixo:**
```bash
   cd testes_automatizados_web/automacao_basico
```
   **Substitua "automacao_basico" pelo projeto desejado: automacao_intermediario ou automacao_avancado.**

3. Execute os testes, com os exemplos de comandos a seguir:
- Dentro da pasta: **testes_automatizados_web/automacao_basico**

   📌 Executar somente um teste específico (usando TAGS)
   ```bash
      robot -d resultados -t "CT01" tests
   ```
   📌 Executar um arquivo de teste específico
   ```bash
      robot -d resultados lista_tarefas.robot
   ```
   📌 Executar todos os testes da pasta 'tests/'
   ```bash
      robot -d resultados tests/
   ```
4. Verifique os resultados:
  Os relatórios e logs serão gerados na pasta ```resultados```.

--- 

## 🙋‍♀️ Autora
Feito com ❤️ por **Sthefany A. Ricardo**. 

📧 sthefannyricardo@gmail.com 

🔗 [LinkedIn](https://www.linkedin.com/in/sthefanyricardo/) 

📅 Última atualização: **Agosto de 2025**. 