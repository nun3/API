export default class ButtonComponent {
    click({selector}) {
        cy.get(selector)
        .click();
    }
} 

