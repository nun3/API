import { When } from 'cypress-cucumber-preprocessor/steps';
import { findMainPage, findModal, findAccordion } from '../../components/componentHelpers/finder/componentContainerFinder';

When('marco a opção {string}', (option) => {
    findMainPage().then($mainPage => {
        cy.selectRadioButton($mainPage, option);
    });
}); 

When('marco a opção {string} na tela modal de {string}', (option, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.selectRadioButton($modal, option);
    });
}); 

When('marco a opção {string} no grupo de {string}', (option, accordionTitle) => {
    findAccordion(accordionTitle).then($accordion => {
        cy.selectRadioButton($accordion, option);
    });
}); 

When('na caixa de seleção {string} marco a opção {string}', (group, option) => {
    findMainPage().then($mainPage => {
        cy.selectRadioButtonInFieldSet($mainPage, option, group);
    });
}); 

When('na caixa de seleção {string} marco a opção {string} na tela modal de {string}', (group, option, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.selectRadioButtonInFieldSet($modal, option, group);
    });
}); 

When('na caixa de seleção {string} marco a opção {string} no grupo de {string}', (group, option, accordionTitle) => {
    findAccordion(accordionTitle).then($accordion => {
        cy.selectRadioButtonInFieldSet($accordion, option, group);
    });
}); 