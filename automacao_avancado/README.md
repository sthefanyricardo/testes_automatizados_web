# Testes Automatizados Web – Nível Avançado

Implementação de testes automatizados utilizando **Robot Framework** com o padrão de projeto **Page Object Model (POM)**, para validar funcionalidades bancárias no sistema [TestFire](https://demo.testfire.net/login.jsp), com usuário e senha: **admin**.

## 🎯 Cenários de Teste
- **CT01: Validação de transferência bancária e saldo atualizado**  
  - Realizar o login  `(usuário e senha: admin)`
  - Realizar uma transferência da conta 800000 Corporate para a conta 800001 Checking 
  - Acessar o resumo da conta 800001 Checking
  - Deve listar corretamente a transferência e os dados da mesma
  - Deve ter atualizado o Saldo da Conta

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
Abaixo está a organização dos arquivos e pastas do projeto, com uma breve descrição de suas funções:

automacao_avancado/
├── **`resources/`** → Recursos reutilizáveis do projeto
│ ├── **`environments/`** → Configurações específicas de ambiente
│ ├── **`keywords/`** → keywords personalizadas para testes
│ ├── **`keywords_common/`** → Keywords compartilhadas entre testes
│ ├── **`page_objects/`** → Elementos estruturados com Page Object Model
│ └── **`main.robot`** → Arquivo principal que centraliza os recursos
├── **`resultados/`** → Relatórios gerados após a execução dos testes
├── **`tests/`** → Suítes de teste automatizadas
├── **`README.md`** → Documentação com instruções de uso e visão geral do projeto
└── **`requirements.txt`** → Lista de dependências necessárias para executar o projeto

---

## 🤖 Como Executar os Testes
### 🔧 Pré-requisitos (Configuração do Ambiente)
  1. **Instalação do Python:**
     - Certifique-se de ter o Python instalado (versão 3.7 ou superior). [Download do Python](https://www.python.org/downloads/)
  2. **Instalação do WebDriver:**
     - Baixe o WebDriver correspondente ao seu navegador (ex: [ChromeDriver para Google Chrome](https://googlechromelabs.github.io/chrome-for-testing/) ou [EdgeDriver para o Microsoft Edge](https://developer.microsoft.com/pt-br/microsoft-edge/tools/webdriver) ou [GeckoDriver para o Firefox](https://github.com/mozilla/geckodriver/releases)).
     - Certifique-se de que o caminho para as pastas e/ou arquivos do WebDriver, esteja no PATH do sistema. 
  3. **Instalação das dependências do projeto:**
     - Abra o terminal na pasta raiz do projeto e execute o seguinte comando:
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
   cd testes_automatizados_web/automacao_avancado
```

3. Execute os testes, com os exemplos de comandos a seguir:
- Dentro da pasta: **testes_automatizados_web/automacao_avancado**

   📌 Executar somente um teste específico (usando TAGS)
   ```bash
      robot -d resultados -t "CT01" tests
   ```
   📌 Executar um arquivo de teste específico
   ```bash
      robot -d resultados tests/sistema_bancario.robot
   ```
   📌 Executar todos os testes da pasta 'tests/'
   ```bash
      robot -d resultados tests
   ```
4. Verifique os resultados:
  Os relatórios e logs serão gerados na pasta ```resultados```.

---

## 🙋‍♀️ Autora
Feito com ❤️ por **Sthefany A. Ricardo**.
📅 Última atualização: **Agosto de 2025**.