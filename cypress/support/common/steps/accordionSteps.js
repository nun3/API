import { When } from 'cypress-cucumber-preprocessor/steps';

When('clico no botão {string} pertencente ao grupo {string}', cy.clickButtonAccordion);

When('clico no botão {string} no cabeçalho pertencente ao grupo {string}', cy.findAndClickOnAccordionButtonByHeaderLabel);