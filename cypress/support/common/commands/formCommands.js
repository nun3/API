Cypress.Commands.add('clickSaveButtonInForm', () => {
    cy.get('app-salvar')
        .find('.btn-salvar')
        .should('be.visible') 
        .dblclick(); //Existem telas que necessitam de dois clicks por algum motivo
});

Cypress.Commands.add('clickNewButtonInForm', () => {    
    cy.get('header-form')
        .find('.btn-novo-default')
        .should('be.visible')
        .click();
});

Cypress.Commands.add('getCurrentFormId', () => {
    cy.get('.codigo-format')
        .then(($id) => {
            return $id.text();
        });
});

Cypress.Commands.add('getAndSaveToIntCurrentFormId', () => {
    cy.getCurrentFormId().then(id => cy.saveId(parseInt(id)));
});

Cypress.Commands.add('fetchAndStoreFormIdFromLink', (link) => {
    cy.contains(link)  // Encontra o link pelo texto
      .invoke('attr', 'href')             // Obtém o valor do atributo 'href'
      .then((href) => {
        const idMatch = href.match(/id[^=]*=(\d+)/);  // Usa a regex para extrair o ID do parâmetro
        if (idMatch) {
          const id = idMatch[1];
          cy.log('ID do item da filial:', id);
          Cypress.env('ID_LINK_URL', id);  // Salva o ID usando um comando personalizado
        } else {
          cy.log('Não foi possível encontrar o ID no href.');
        }
      });
  });
  

Cypress.Commands.add('clickButtonMenuHelper', (Text) => {
    cy.get(`header-form[text="${Text}"] button#dropdown-help`)
    .click();
});

Cypress.Commands.add('selectItemMenuDropDown', (itemList) => {
    cy.get('.dropdown-menu.dropdown-aling.show')
    .contains(`${itemList}`)
    .click();
});