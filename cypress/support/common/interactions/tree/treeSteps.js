import { When } from 'cypress-cucumber-preprocessor/steps';
import { findMainPage, findModal } from '../../components/componentHelpers/finder/componentContainerFinder';

When('seleciono a opção {string} na árvore', (optionPath) => {
    findMainPage().then($mainPage => {
        cy.selectOptionInTree($mainPage, optionPath);
    });
});

When('seleciono a opção {string} na árvore na tela modal de {string}', (optionPath, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.selectOptionInTree($modal, optionPath);
    });
});