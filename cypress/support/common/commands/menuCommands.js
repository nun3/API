Cypress.Commands.add('SetMenuFixed', () => {
    cy.wait(2000);
    cy.get('.button-img.ng-tns-c103-1').click();
});

// Comando personalizado para selecionar um item no menu principa
Cypress.Commands.add('SetMenuPrincipal', (menuPrincipal) => { 
    // Localizar e clicar no item do menu principal especificado
    cy.contains('.menus-sidenav a', menuPrincipal)
        .should('exist') // Verificar se o item do menu existe
        .click(); // Clicar no item do menu
});

// Comando personalizado para selecionar um item no menu
Cypress.Commands.add('SetMenu', (menu) => {
    // Localizar e clicar no item de menu especificado
    cy.contains('.item', menu)
        .should('exist') // Verificar se o item do menu existe
        .click(); // Clicar no item do menu
});

// Comando personalizado para selecionar um sub-menu
Cypress.Commands.add('SetSubMenu', (subMenu) => {
    cy.get('.ng-star-inserted')
        .find('a')
        .each(($el) => {
            if ($el.text().trim() === subMenu) {
                cy.wrap($el).click();
                cy.url().should('not.eq', Cypress.config().baseUrl);
            }
        });
});



