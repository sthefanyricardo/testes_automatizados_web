# Testes Automatizados Web – Nível Intermediário

Implementação de testes automatizados utilizando **Robot Framework** com o padrão de projeto **Page Object Model (POM)**, para validar o fluxo de compra na aplicação: [SauceDemo](https://www.saucedemo.com/).

## ✅ Funcionalidades Testadas

- **Login**: Acesso com diferentes tipos de usuários (`standard_user`, `performance_glitch_user`)
- **Carrinho de Compras**:
  - Adição e remoção de produtos
  - Seleção aleatória de produtos
  - Controle de itens para evitar repetição
  - Tentativa de compra com carrinho vazio
- **Finalização do Pedido**:
  - Preenchimento automático de dados com biblioteca Faker
  - Verificação de mensagens de sucesso
- **Outros Recursos**:
  - Aleatoriedade de produtos com controle de repetição
  - Uso de dicionários para armazenar informações da sessão

---

## 🧪 Casos de Teste Implementados


| ID   | Título                                           | Objetivo                                                                 | Tags                                 |
|------|--------------------------------------------------|--------------------------------------------------------------------------|--------------------------------------|
| CT01 | Fluxo completo de compra com usuário padrão      | Valida login, manipulação do carrinho e finalização do pedido.           | CT01, LOGIN_USER_STANDARD               |
| CT02 | Compra com usuário com falhas de performance     | Verifica fluxo de compra simulando lentidão com `performance_glitch_user`.| CT02, LOGIN_USER_PERFORMANCE_GLITCH            |
| CT03 | Compra com carrinho vazio                        | Tenta finalizar compra sem produtos no carrinho.                         | CT03, TENTATIVA_FINALIZACAO_PEDIDO_SEM_PRODUTOS       |

💡 *Use as tags com `--include` para executar testes específicos.*

---

## 💡 Boas Práticas Aplicadas

### ✅ Organização e Manutenção
- **DRY (Don't Repeat Yourself)**: Reutilização de keywords para reduzir código duplicado.
- **Page Object Model (POM)**: Separação das interações por página para facilitar manutenção.
- **Separação de Responsabilidades**: Estrutura modular dividida entre testes, localizadores e lógica de negócio.

### ⚙️ Eficiência e Robustez
- **Suite Setup/Teardown**: Gerenciamento da abertura e fechamento do navegador de forma automática.
- **Uso de Tags**: Segmentação inteligente de testes para execução seletiva.
- **Controle de Aleatoriedade**: Garantia de não repetição na escolha de produtos.

### 🔧 Recursos Auxiliares
- **Faker Library**: Geração de dados realistas para preenchimento de formulários.
- **Dicionários e Listas**: Armazenamento e reaproveitamento de dados ao longo do fluxo de teste.

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

```text
automacao_intermediario/
├── resources/ → Recursos reutilizáveis do projeto
│ ├── credentials/ → Variáveis com dados de acesso (usuários e senhas)
│ ├── environments/ → Configurações específicas de ambiente
│ ├── keywords/ → keywords personalizadas para testes
│ ├── keywords_common/ → Keywords compartilhadas entre testes
│ ├── massa_dados/ → Variáveis com dados utilizados para fornecer informações dinâmicas aos testes
│ ├── page_objects/ → Elementos estruturados com Page Object Model
│ └── main.robot → Arquivo principal que centraliza os recursos
├── resultados/ → Relatórios gerados após a execução dos testes
├── tests/ → Suítes de testes automatizados
├── README.md → Documentação com instruções de uso e visão geral do projeto
└── requirements.txt → Lista de dependências necessárias para executar o projeto
```

---

## 🤖 Como Executar os Testes
### 🔧 Pré-requisitos (Configuração do Ambiente)
  1. **Instalação do Python:**
     - Certifique-se de ter o Python instalado (versão 3.13.2 ou superior). [Download do Python](https://www.python.org/downloads/)
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
   cd testes_automatizados_web/automacao_intermediario
```

3. Execute os testes, com os exemplos de comandos a seguir:
- Dentro da pasta: **testes_automatizados_web/automacao_intermediario**

   📌 Executar somente um teste específico (usando TAGS)
   ```bash
      robot -d resultados -t "CT01" tests
   ```
   📌 Executar um arquivo de teste específico
   ```bash
      robot -d resultados tests/sistema_vendas.robot
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
📅 Última atualização: **Agosto de 2025**.  