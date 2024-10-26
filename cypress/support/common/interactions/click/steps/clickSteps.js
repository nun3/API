import { When } from 'cypress-cucumber-preprocessor/steps';
import { findMainPage, findAccordion, findModal } from '../../../components/componentHelpers/finder/componentContainerFinder';

When('clico no botão {string} no grupo de {string}', (button, accordionTitle) => {
    findAccordion(accordionTitle).then($accordion => {
        cy.clickButton($accordion, button);
    });
}); 

When('clico no botão {string} na tela modal de {string}', (button, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.clickButton($modal, button);
    });
});

When('clico no botão {string} com o valor {string}', (button) => {
    findMainPage().then($mainPage => {
        cy.clickButton($mainPage, button);
    });
});

When('clico no botão {string} no grupo de botões pertencente a {string}', (button, buttonGroup) => {
    findMainPage().then($mainPage => {
        cy.clickSelectButton($mainPage, buttonGroup, button);
    });
});

When('clico no botão {string} no grupo de botões pertencente a {string} no grupo de {string}', (button, buttonGroup, accordionTitle) => {
    findAccordion(accordionTitle).then($accordion => {
        cy.clickSelectButton($accordion,buttonGroup, button);
    });
});

When('clico no botão {string} no grupo de botões pertencente a {string} na tela modal de {string}', (button, buttonGroup, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.clickSelectButton($modal, buttonGroup, button);
    });
});