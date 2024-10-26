export default class PAutoCompleteComponent {
    fill({ selector, value }) {
        cy.get(selector)
            .find('input')
            .type(value);
    }

    selectByOption({ selector, value }) {
        cy.get('ul[role="listbox"]')
            .find('li[role="option"]')
            .contains(value)
            .should('be.visible')
            .click({ force: true });
    }

    selectById({ selector, value }) {
        cy.get('ul[role="listbox"]')
            .find('.autocomplete-id')
            .contains(value)
            .should('be.visible')
            .click({ force: true });
    }

    clear(selector) {
        cy.get(selector)
            .find('input')
            .clear();
    }

    remove({ selector, value }) {
        cy.get(selector)
            .find('.p-autocomplete-token-icon')
            .filter((index, element) => {
                return Cypress.$(element).siblings('.p-autocomplete-token-label').text() === value;
            })
            .click();
    }
}