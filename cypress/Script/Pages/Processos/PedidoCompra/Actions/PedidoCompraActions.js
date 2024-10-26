function clickButtonItemGrid(button, value, column) {
    const buttonMap = {
      'Editar': 'app-editar'
    };
    const columnMap = {
        '#': 0
    };
    cy.get('p-table')
    .find('table[role="grid"]')
    .find('tbody[class="p-datatable-tbody"]')
    .then(($rowsBody) => {
        const rows = $rowsBody.find('tr');
        rows.each((rowIdx, row) => {
            const referenceCell = cy.get(row).find('td').eq(columnMap[column]);
            referenceCell.then($cell => {
                if ($cell.text().includes(value)) {
                    cy.get(row).find('.table-body-actions')
                    .find(buttonMap[button])
                    .should('exist')
                    .click();
                }
            });
        });
    });
}
   

export default { clickButtonItemGrid }