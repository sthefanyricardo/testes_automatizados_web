***Settings***
Documentation  Este arquivo contém os testes automatizados para o sistema de vendas (https://www.saucedemo.com/), incluindo cenários de login, adição e remoção de produtos no carrinho, e finalização de pedidos.
Resource  ../resources/main.robot
Suite Setup  Abrir o navegador
Suite Teardown  Fechar o navegador
Test Teardown  Limpar variaveis globais

***Test Cases***
CT01: Finalizar pedido após login, adição e remoção de produtos do carrinho com usuário "standard_user"
    [Documentation]  Realizar o login com o usuário standard_user, adicionar produtos ao carrinho, remover um produto e finalizar o pedido.
    [Tags]  CT01  LOGIN_USER_STANDARD
    [Setup]  Run Keywords  Acessar página home do site  ${SAUCE_DEMO_URL}
    ...  AND  Login com usuário  standard_user
    Adicionar "segundo" produto ao carrinho
    Adicionar "outro" produto ao carrinho
    Remover "primeiro" produto adicionado
    Acessar carrinho e finalizar o pedido

CT02: Finalizar pedido após login, adição e remoção de produtos do carrinho com usuário "performance_glitch_user"
    [Documentation]  Realizar o login com o usuário performance_glitch_user, adicionar produtos ao carrinho, remover um produto e finalizar o pedido.
    [Tags]  CT02  LOGIN_USER_PERFORMANCE_GLITCH
    [Setup]  Run Keywords  Acessar página home do site  ${SAUCE_DEMO_URL}
    ...  AND  Login com usuário  performance_glitch_user
    Adicionar "segundo" produto ao carrinho
    Adicionar "outro" produto ao carrinho
    Remover "primeiro" produto adicionado
    Acessar carrinho e finalizar o pedido

CT03: Realizar o login com usuário "standard_user" e, tentar finalizar o pedido sem produtos no carrinho
    [Documentation]  Realizar o login com o usuário standard_user e, tentar finalizar o pedido sem produtos no carrinho.
    [Tags]  CT03  TENTATIVA_FINALIZACAO_PEDIDO_SEM_PRODUTOS
    [Setup]  Run Keywords  Acessar página home do site  ${SAUCE_DEMO_URL}
    ...  AND  Login com usuário  standard_user
    Acessar carrinho e tentar finalizar pedido