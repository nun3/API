import { gerarCPF } from '../../../../../support/common/utils/generator';

class pessoaActions {
    clickTab(tab) {
        cy.get('p-tabview')
            .find('.p-tabview-nav')
            .contains('.p-tabview-title', tab)
            .click();
    }

    fielfield(fieldName, value) {
        if (value === 'CPFVALIDO') { 
            value = gerarCPF();
            cy.log(value);
            Cypress.env('CPFVALIDO', value);
        }
        cy.get('.p-card-content')
            .find(`label:contains("${fieldName}")`) 
            .should('be.visible') 
            .invoke('attr', 'for') // Obtém o valor do atributo 'for' do label, que deve ser o ID do campo de entrada associado
            .then((inputId) => {
                cy.get(`#${inputId}`) 
                    .should('be.visible') 
                    .clear()
                    .type(value);
            });
    }


    selectItemDialog(value, fieldName) {
        cy.get('p-dialog')
            .find('.p-dialog-content')
            .find(`label:contains("${fieldName}")`)
            .siblings('p-dropdown')
            .click()
            .then(() => {
                cy.get('.p-dropdown-panel')
                    .should('be.visible')
                    .find('.p-dropdown-item')
                    .contains(value)
                    .click();
            })


    }

    clickBtn() {
        cy.get('.p-dialog .ui-dialog-footer')
            .find(':contains("Salvar")')
            .should('be.visible') // Verificar se o botão "Salvar" está visível
            .click();
    }

    clickAdd() {
        cy.contains('button.btn-abrir-modal', 'Adicionar endereço')
            .click();
    }

    filterScreenPessoa(fieldReference, fieldValue) {
        if(fieldReference == 'CPF/CNPJ/Identificação'){
            fieldValue = Cypress.env('CPFVALIDO')
            cy.log(fieldValue);   
          }
        // Encontra o campo na tela de filtro pelo rótulo, verifica se está visível e preenche com o valor fornecido
        cy.get('.p-sidebar-content')
            .find('label')
            .contains(fieldReference)
            .should('be.visible') // Verifica se o campo está visível
            .type(fieldValue); // Preenche o campo com o valor fornecido
    }
    clickRowGridPessoa(reference) {
        if(reference == 'CONTEXTO[CPF]'){
            reference = Cypress.env('CPFVALIDO')
          }
    
        cy.get('td.column-row-Data div')
            .contains(reference)
            .click();
    }

}

export default new pessoaActions();