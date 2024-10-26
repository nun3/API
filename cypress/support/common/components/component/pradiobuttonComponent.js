export default class PRadioButtonComponent {
    select({ selector, option }) {
        cy.get(selector).contains(option).click();
    }
}