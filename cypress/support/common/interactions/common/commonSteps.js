import { findMainPage, findModal } from "../../components/componentHelpers/finder/componentContainerFinder";

When('direciono o foco para o campo {string}', (label) => {
    findMainPage().then($mainPage => {
        cy.setFocusField($mainPage, label);
    });
});

When('clico no botão no campo {string}', (label) => {
    findMainPage().then($mainPage => {
        cy.clickButtonOnField($mainPage, label);
    });
});

When('direciono o foco para o campo {string} na tela modal de {string}', (label, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.setFocusField($modal, label);
    });
});

When('que clico no texto {string}', (text) => {
    findMainPage().then($mainPage => { 
        cy.clickText($mainPage, text);
    });
});

When('que clico no texto {string} na tela modal de {string}', (text, modalTitle) => {
    findModal(modalTitle).then($modal => {
        cy.clickText($modal, text);
    });
});