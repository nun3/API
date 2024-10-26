export default class InputComponent {
    fill({selector, value}) {
        cy.get(selector).type(value);
    }

    clear(selector) {
        cy.get(selector).clear();
    }

    focus(selector) {
        cy.get(selector).focus();
    }
}