Cypress.Commands.add('clickButtonAccordion', (btnName, groupForm) => {
    cy.get(`.p-card-content .header-title:contains("${groupForm}")`)
    .closest('p-accordion')
    .find(`button:contains("${btnName}")`)
    .click();
});

Cypress.Commands.add('findAndClickOnAccordionButtonByHeaderLabel', (button, modalTitle) => {
    cy.get('p-header')
    .contains(`${modalTitle}`)
    .parent()
    .find('button')
    .contains(button)
    .click();    
});