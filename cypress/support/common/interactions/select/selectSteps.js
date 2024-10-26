import { When } from 'cypress-cucumber-preprocessor/steps';
import { findMainPage, findModal, findAccordion } from '../../components/componentHelpers/finder/componentContainerFinder';

When('seleciono no campo {string} a opção {string}', (label, option) => {
    findMainPage().then($mainPage => {
        cy.selectOption($mainPage, label, option);
    });
});

When('seleciono no campo {string} a opção {string} no grupo de {string}', (label, option, accordionTitle) => {
    findAccordion(accordionTitle).then($accordion => {
        cy.selectOption($accordion, label, option);
    });
});   

When('seleciono no campo {string} a opção {string} na tela modal de {string}', (label, option, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.selectOption($modal, label, option);
    });
});

When('preencho o campo {string} com o valor {string} e seleciono a opção {string}', (label, value, option) => {
    findMainPage().then($mainPage => {
        cy.fillAndSelectOption($mainPage, label, value, option);
    });
});

When('preencho o campo {string} com o valor {string} e seleciono a opção {string} na tela modal de {string}', (label, value, option, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.fillAndSelectOption($modal, label, value, option);
    });
});

When('removo do campo {string} a opção {string}', (label, option) => {
    findMainPage().then($mainPage => {
        cy.removeOption($mainPage, label, option);
    });
})

When('preencho o campo {string} com o valor {string} e seleciono a opção {string} no grupo de {string}', (label, value, option, accordionTitle) => {
    findAccordion(accordionTitle).then($accordion => {
        cy.fillAndSelectOption($accordion, label, value, option);
    });
});