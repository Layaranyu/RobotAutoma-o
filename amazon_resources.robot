***Settings***
Library     SeleniumLibrary

***Variables***
${URL}                         https://www.amazon.com.br/ref=nav_logo
${MENU_ELETRONICOS}            //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${TEXTO_HEADER_ELETRONICOS}    Eletrônicos e Tecnologia
${HEADER_ELETRONICOS}          //h1[contains(.,'Eletrônicos e Tecnologia')]
***Keywords***
Abrir o navegador
    Open Browser    browser=chrome    
    Maximize Browser Window    
Fechar o navegador
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