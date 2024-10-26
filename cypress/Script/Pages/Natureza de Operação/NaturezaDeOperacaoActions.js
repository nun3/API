class NaturezaDeOperacaoActions {

    selectButtonTab(fieldName) {
        cy.get('p-selectbutton')
            .contains('div[role="button"]', fieldName)
            .should('be.visible')
            .click();    
    }   
}
export default new NaturezaDeOperacaoActions()