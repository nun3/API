import { findModal } from '../components/componentHelpers/finder/componentContainerFinder';

Cypress.Commands.add('clickButtonInModalFooter', (buttonLabel, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.get($modal)
        .find('[class*="dialog-footer"], p-footer')
        .find(`.btn:contains("${buttonLabel}")`)
        .should('be.visible')
        .click();
    })
});

Cypress.Commands.add('clickButtonInModalHeader', (buttonLabel, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.get($modal)
        .find('[class*="p-dialog-header"]')
        .find(`.btn:contains("${buttonLabel}")`)
        .should('be.visible')
        .click();
    })
});