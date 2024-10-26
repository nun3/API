export default class PTabViewComponent {
    clickTab({ selector, tabName }) {
        cy.get(selector)
        .find(`.p-tabview-title:contains("${tabName}")`) 
        .click()
    }
}