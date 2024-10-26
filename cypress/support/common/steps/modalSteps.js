import { When } from "cypress-cucumber-preprocessor/steps";

When(`que clico no botão {string} no rodapé na tela modal de {string}`, cy.clickButtonInModalFooter);

When(`que clico no botão {string} no cabeçalho na tela modal de {string}`, cy.clickButtonInModalHeader);
