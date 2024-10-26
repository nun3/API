import { When } from 'cypress-cucumber-preprocessor/steps';
import { findMainPage, findModal, findAccordion } from '../../components/componentHelpers/finder/componentContainerFinder';

When('preencho o campo {string} com o valor {string}', (label, value) => {
    findMainPage().then($mainPage => {
        cy.fillField($mainPage, label, value);
    });
});

When('preencho o campo {string} com o valor {string} na tela modal de {string}', (label, value, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.fillField($modal, label, value);
    });
});

When('preencho o campo {string} com o valor {string} no grupo de {string}', (label, value, accordionTitle) => {
    findAccordion(accordionTitle).then($accordion => {
        cy.fillField($accordion, label, value);
    });
}); 