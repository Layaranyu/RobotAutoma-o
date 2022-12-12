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
# Casos de teste 2- Pesquisa de produto
#     [Documentation]     Esse teste verifica a busca do produto
#     [Tags]              busca_produtos lista_produtos
#     Acessar o home page do site da Amazon.com.br
#     Digitar o nome do produto "xbox series 5" no campo de Pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa se esta listando o produto pesquisado
