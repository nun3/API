export default class PInputNumber {
    fill({selector, value}) {
        cy.get(selector).type(value);
    }

    clear(selector) {
        cy.get(selector).type('{selectall}{backspace}');
    }
}