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

Cypress.Commands.add('clickButtonMenuHelper', (Text) => {
    cy.get(`header-form[text="${Text}"] button#dropdown-help`)
    .click();
});

Cypress.Commands.add('selectItemMenuDropDown', (itemList) => {
    cy.get('.dropdown-menu.dropdown-aling.show')
    .contains(`${itemList}`)
    .click();
});