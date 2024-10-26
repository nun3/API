import { When } from 'cypress-cucumber-preprocessor/steps';
import { findAccordion, findMainPage, findModal } from '../../components/componentHelpers/finder/componentContainerFinder';

When('clico na aba {string}', (tabName) => {
    findMainPage().then($mainPage => {
        cy.clickTab($mainPage, tabName);
    });
});

When('clico na aba {string} na tela modal de {string}', (tabName, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.clickTab($modal, tabName);
    });
});

When('clico na aba {string} no grupo de {string}', (tabName, accordionTitle) => {
    findAccordion(accordionTitle).then($accordion => {
        cy.clickTab($accordion, tabName);
    });
});