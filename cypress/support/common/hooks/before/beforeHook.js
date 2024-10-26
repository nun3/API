import { Before } from 'cypress-cucumber-preprocessor/steps';

Before(() => {
    cy.getAuthToken().then(() => {
        cy.Login()
    });
});