***Settings***
Library     SeleniumLibrary

***Variables***
${URL}                         https://www.amazon.com.br/ref=nav_logo
${MENU_ELETRONICOS}            //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${TEXTO_HEADER_ELETRONICOS}    Eletrônicos e Tecnologia
${HEADER_ELETRONICOS}          //h1[contains(.,'Eletrônicos e Tecnologia')]
${TEXTO_PESQUISAR}             //input[contains(@type,'text')]
${PESQUISAR}                   //input[contains(@type,'submit')]
${RESPOSTA_PESQUISA}           //span[@class='a-color-state a-text-bold'][contains(.,'"xbox series s"')]
${ADICIONAR_CARRINHO}          //input[contains(@name,'submit.add-to-cart')]
${ADICIONADO}                  //span[@class='a-size-medium-plus a-color-base sw-atc-text a-text-bold'][contains(.,'Adicionado ao carrinho')]
***Keywords***
Abrir o navegador
    Open Browser    browser=chrome    
    Maximize Browser Window    
Fechar o navegador
    Capture Page Screenshot 	 
    Close Browser  

Acessar o home page do site da Amazon.com.br
    Go To   ${URL}
    Wait Until Element Is Visible 	  ${MENU_ELETRONICOS}

Entrar no menu Eletrônicos
    Click Element 	 ${MENU_ELETRONICOS}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains  ${TEXTO_HEADER_ELETRONICOS}
    Wait Until Element Is Visible   ${HEADER_ELETRONICOS}

Verificar se o titulo da página fica "${TITULO}"
    Title Should Be  ${TITULO}   

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible 	 locator=//a[@aria-label='${NOME_CATEGORIA}']

Digitar o nome do produto "xbox series S" no campo de Pesquisa
    Input Text  locator=${TEXTO_PESQUISAR}  text=xbox series s

Clicar no botão de pesquisa
    Click Element  locator=${PESQUISAR}

Verificar o resultado da pesquisa se esta listando o produto pesquisado
    Wait Until Element Is Visible  locator=${RESPOSTA_PESQUISA}
    Wait Until Page Contains  text=xbox series s

Adicionar o produto "${PRODUTO}" no carrinho
    Click Element 	locator=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')]
    Click Element  locator=${ADICIONAR_CARRINHO}

Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Wait Until Element Is Visible 	 locator=${ADICIONADO} 
    