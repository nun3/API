export default class PCheckBoxComponent {
    check({ selector }) {
        cy.get(selector)
        .find('.p-checkbox-box')
        .click().then(() => {
            cy.get(selector)
            .find('.p-checkbox-box')
            .should('have.attr', 'aria-checked', 'true');
        });
    }

    uncheck({ selector }) {
        cy.get(selector)
        .find('.p-checkbox-box')
        .click().then(() => {
            cy.get(selector)
            .find('.p-checkbox-box')
            .should('have.attr', 'aria-checked', 'false');
        });
    }
}