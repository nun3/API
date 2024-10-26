class ModeloSerieActions {

    clicksave(){
        cy.get('app-breadcrumb')
        .find('.btn-salvar')
        .should('be.visible') // Verificar se o botão "Salvar" está visível
        .dblclick(); // Clicar no botão "Salvar"
    }
}
export default new ModeloSerieActions();