import { Then } from 'cypress-cucumber-preprocessor/steps';
import { findMainPage, findModal, findAccordion } from '../../components/componentHelpers/finder/componentContainerFinder';

Then('seleciono o checkbox {string}', (label) => {
    findMainPage().then($mainPage => {
        cy.checkCheckbox($mainPage, label);
    });
});

Then('seleciono o checkbox {string} no grupo de {string}', (label, accordionTitle) => {
    findAccordion(accordionTitle).then($accordion => {
        cy.checkCheckbox($accordion, label);
    });
});

When('seleciono o checkbox {string} na tela modal de {string}', (label, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.checkCheckbox($modal, label);
    });
});