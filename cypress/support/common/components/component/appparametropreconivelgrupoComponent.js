export default class AppParametroPrecoNivelGrupoComponent {
    click(selector) {
        cy.get(selector)
        .find('button')
        .click();
    }
}