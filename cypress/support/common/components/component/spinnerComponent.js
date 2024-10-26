export default class PSpinnerComponent {
    fill({selector, value}) {
        cy.get(selector).type(value + '{enter}');
    }

    clear(selector) {
        cy.get(selector).clear();
    }
}