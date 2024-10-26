class tabelaMelhoramentoActions {
    clickBtnModalAdd(btnModal, title){
      cy.get('p-header')
      .find(`.header-title:contains("${title}")`).parent()
      .find('button')
      .contains(btnModal)
      .click();
    }

    clickBtnEdit(code){
      cy.get('table[role="grid"] tbody tr').each(($row) => {
        cy.wrap($row).within(() => {
          cy.get('td').first().then(($cell) => {
            cy.log($cell.text().trim())
              if ($cell.text().trim() == code) {
                cy.get('a.botao-editar')
                .click({ force: true });
              }
          });
        });
      });
    }
}

export default new tabelaMelhoramentoActions();
