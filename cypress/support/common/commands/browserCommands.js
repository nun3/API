import { genericInterpreter } from '../processor/interpreter/insertInterpreter'

// Comando personalizado para clicar no botão de filtro
Cypress.Commands.add('clickFilterButton', () => {
    // Encontrar o botão de filtro no cabeçalho da grade, verificar se está visível e clicar nele
    cy.get('app-header-grid')
        .find('.btn-filtrar')
        .should('be.visible') // Verificar se o botão de filtro está visível
        .click(); // Clicar no botão de filtro
});

// Comando personalizado para clicar no botão "Novo"
Cypress.Commands.add('clickNewButton', () => {
    // Encontrar o botão "Novo" no cabeçalho da grade, verificar se está visível e clicar nele
    cy.get('app-header-grid')
        .find('.btn-novo')
        .should('be.visible') // Verificar se o botão "Novo" está visível
        .click(); // Clicar no botão "Novo"
});


// Comando personalizado para clicar na primeira linha da grade
Cypress.Commands.add('clickFirstRowGrid', (reference) => {
    reference = genericInterpreter(reference);
    // Localizar e clicar na célula da grade que contém o valor fornecido
    cy.get('td.column-row-Data div')
        .contains(reference)
        .click();
}); 

// Comando personalizado para clicar no botão de exclusão da primeira linha da grade
Cypress.Commands.add('clickExcludeFirstRowGrid', (reference) => {

    reference = genericInterpreter(reference);
    
    // Localizar e clicar no botão de exclusão da linha da grade que contém o valor fornecido
    cy.get('td.column-row-Data')
        .contains(reference)
        .parent()
        .parent() // Ir para o elemento pai da linha
        .find('app-remover') // Encontrar o botão de exclusão
        .click(); // Clicar no botão de exclusão
});

Cypress.Commands.add('checkItemForm', (reference) => {
    // Constrói a URL completa esperada
    const expectedUrl = Cypress.config().baseUrl + reference;
    // Verifica se a URL atual contém a URL esperada
    cy.url().should('contain', expectedUrl);
});