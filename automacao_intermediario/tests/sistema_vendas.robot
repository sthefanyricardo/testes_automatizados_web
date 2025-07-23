***Settings***
Documentation  Este arquivo contém os testes automatizados para o sistema de vendas (https://www.saucedemo.com/), incluindo cenários de login, adição e remoção de produtos no carrinho, e finalização de pedidos.
Resource  ../resources/main.robot
Suite Setup  Abrir o navegador
Test Setup  Acessar página home do site  ${SAUCE_DEMO_URL}
Suite Teardown  Fechar o navegador

***Test Cases***
Cenario 1: Login e Adição de Produtos
    [Documentation]  Realizar o login com o usuário standard_user, adicionar produtos ao carrinho e finalizar o pedido.
    Login com usuário padrão
    Adicionar segundo produto ao carrinho
    Adicionar outro produto ao carrinho
    Remover primeiro produto adicionado
    Acessar carrinho e finalizar pedido

Cenario 2: Login e Adição de Produtos com Performance Glitch User
    [Documentation]  Realizar o login com o usuário performance_glitch_user, adicionar produtos ao carrinho e finalizar o pedido.
    Login com usuário performance glitch
    Adicionar segundo produto ao carrinho
    Adicionar outro produto ao carrinho
    Remover primeiro produto adicionado
    Acessar carrinho e finalizar pedido

Cenario 3: Tentativa de Finalização de Pedido sem Produtos
    [Documentation]  Realizar o login com o usuário standard_user e tentar finalizar o pedido sem produtos no carrinho.
    Login com usuário padrão
    Acessar carrinho e tentar finalizar pedido