import { genericInterpreter } from '../processor/interpreter/insertInterpreter'

// Comando personalizado para preencher campos na tela de filtro
Cypress.Commands.add('fillFieldsInFilterScreen', (fieldReference, fieldValue) => {
    // Loga o valor atual de IDGLOBAL definido no arquivo cypress.env.json
    cy.log(fieldValue);
    fieldValue = genericInterpreter(fieldValue);
    // Loga o valor final do campo após a verificação
    cy.log(fieldValue);
    
    // Encontra o campo na tela de filtro pelo rótulo, verifica se está visível e preenche com o valor fornecido
    cy.get('.p-sidebar-content')
        .find('label')
        .contains(fieldReference)
        .should('be.visible') // Verifica se o campo está visível
        .type(fieldValue); // Preenche o campo com o valor fornecido
});

// Comando personalizado para clicar no botão de envio na tela de filtro
Cypress.Commands.add('clickSubmitButtonInFilterScreen', () => {
    // Encontra o botão de envio na tela de filtro, verifica se está visível e clica nele
    cy.get('.p-sidebar-content')
        .find('.btn-confirm')
        .contains('Filtrar') // Verifica se o botão contém o texto 'Filtrar'
        .click(); // Clica no botão de envio
});