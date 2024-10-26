export default class PEditorComponent {
    fill({selector, value}) {
        cy.get(selector).type(value);
    }

    clear(selector) {
        cy.get(selector).clear();
    }
}