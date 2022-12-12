***Settings***
Documentation       Esse suite testa o site do Amazon.com.br
Resource            amazon_resources.robot
Test Setup          Abrir o navegador
Test Teardown       Fechar o navegador

***Test Cases***
Casos de teste 1- acesso ao menu "Eletrônicos"
    [Documentation]     Esse teste verifica o menu eletrônico no site Amazon.com.br
    ...                 e verifica a categoria Computadores e Informática
    [Tags]              menus categorias
    Acessar o home page do site da Amazon.com.br
    Entrar no menu Eletrônicos
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o titulo da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"

Casos de teste 2- Pesquisa de produto
    [Documentation]     Esse teste verifica a busca do produto
    [Tags]              busca_produtos lista_produtos
    Acessar o home page do site da Amazon.com.br
    Digitar o nome do produto "xbox series s" no campo de Pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se esta listando o produto pesquisado

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar o home page do site da Amazon.com.br
    Digitar o nome do produto "xbox series s" no campo de Pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se esta listando o produto pesquisado    
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
 
# Caso de Teste 04 - Remover Produto do Carrinho
#     [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
#     [Tags]             remover_carrinho
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
#     Adicionar o produto "Console Xbox Series S" no carrinho
#     Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
#     Remover o produto "Console Xbox Series S" do carrinho
#     Verificar se o carrinho fica vazio
