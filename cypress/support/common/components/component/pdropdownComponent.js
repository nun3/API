export default class PDropdownComponent {
    selectByOption({ selector, value }) {
        cy.get(selector)
            .find('.p-dropdown-trigger')
            .click({ force: true });
        
        cy.get('ul[role="listbox"]')
            .find('p-dropdownitem')
            .contains(value)
            .should('be.visible')
            .click({ force: true });
    }
}