import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'

Given(`que clico no botão Novo no cabeçalho do formulário`, cy.clickNewInFormButton);

Given(`que clico no botão Salvar no cabeçalho do formulário`, cy.clickSaveButtonInForm);
When(`que clico no botão Salvar no cabeçalho do formulário`, cy.clickSaveButtonInForm);
Then(`que clico no botão Salvar no cabeçalho do formulário`, cy.clickSaveButtonInForm);

Then('clico no botão Menu Vertical no cabeçalho do formulário', cy.clickButtonMenuHelper);
Then('clico na opção {string} no Menu Vertical no cabeçalho do formulário', cy.selectItemMenuDropDown);

Then('armazeno o valor do ID na tela de formulário', cy.getAndSaveToIntCurrentFormId);
Then('armazeno o valor do ID na tela de formulário Crumb', cy.getAndSaveToIntCurrentAppCrumbId);
