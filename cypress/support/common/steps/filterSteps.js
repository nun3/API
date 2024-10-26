import { Given } from 'cypress-cucumber-preprocessor/steps';

Given(`cliquei no botão Filtrar na tela de Filtros`, cy.clickSubmitButtonInFilterScreen);
When(`clico no botão Filtrar na tela de Filtros`, cy.clickSubmitButtonInFilterScreen);

Given(`preencho o campo {string} com valor {string} na tela de Filtros`, cy.fillFieldsInFilterScreen);
