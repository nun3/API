export default class PSelectButtonComponent {
    click({selector, button}) {
        cy.get(selector)
        .find(`.p-button-label:contains("${button}")`) 
        .click()
    }
}