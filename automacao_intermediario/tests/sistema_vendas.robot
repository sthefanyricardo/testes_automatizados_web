***Settings***
Documentation  Este arquivo contém os testes automatizados para o sistema de vendas (https://www.saucedemo.com/), incluindo cenários de login, adição e remoção de produtos no carrinho, e finalização de pedidos.
Resource  ../resources/main.robot
Suite Setup  Abrir o navegador
Test Setup  Acessar página home do site  ${SAUCE_DEMO_URL}
Suite Teardown  Fechar o navegador

***Test Cases***
Cenario 1: Login, adição, remoção de produtos e, finalização de pedido
    [Documentation]  Realizar o login com o usuário standard_user, adicionar produtos ao carrinho, remover um produto e finalizar o pedido.
    [Tags]  CT01  LOGIN_USER_STANDARD
    Login com usuário  standard_user
    Adicionar "segundo" produto ao carrinho
    Adicionar "outro" produto ao carrinho
    Remover "primeiro" produto adicionado
    Acessar carrinho e finalizar o pedido

Cenario 2: Login, adição, remoção de produtos e, finalização de pedido
    [Documentation]  Realizar o login com o usuário performance_glitch_user, adicionar produtos ao carrinho, remover um produto e finalizar o pedido.
    [Tags]  CT02  LOGIN_USER_PERFORMANCE_GLITCH
    Login com usuário  performance_glitch_user
    Adicionar "segundo" produto ao carrinho
    Adicionar "outro" produto ao carrinho
    Remover primeiro produto adicionado
    Acessar carrinho e finalizar pedido

Cenario 3: Login e tentativa de finalização de pedido sem produtos no carrinho
    [Documentation]  Realizar o login com o usuário standard_user e, tentar finalizar o pedido sem produtos no carrinho.
    [Tags]  CT03  TENTATIVA_FINALIZACAO_PEDIDO_SEM_PRODUTOS
    Login com usuário  standard_user
    Acessar carrinho e tentar finalizar pedido