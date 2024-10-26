export function findMainPage() {
    return cy.get('.p-card-content')
        .should('be.visible')
        .as('mainPage');
}

export function findModal(modalTitle) {
    return cy.get(`.p-dialog:visible .p-dialog-title:contains("${modalTitle}")`)
        .closest('.p-dialog')
        .as('modal');
}

export function findAccordion(accordionTitle) {
    return cy.get(`.header-title:contains("${accordionTitle}")`)
    .closest('p-accordiontab')
    .should('be.visible')
    .as('accordion');
}