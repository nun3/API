Cypress.Commands.add('Login', () => {
  cy.getAuthToken().then(() => {
    cy.createSession(); // Criar sessão após obter o token
    cy.logTokenExpirationCountdown();
  });
});

Cypress.Commands.add('createSession', () => {
  cy.session('userSession', () => {
    cy.visit('/');
    cy.wait(5000);
    
    cy.get('.login-form').within(() => {
      cy.get('#username').focus().type(Cypress.env('USER_NAME'));
      cy.get('#password').focus().type(Cypress.env('PASSWORD'));
      cy.root().submit();
    });

    cy.location('pathname', { timeout: 10000 }).should('not.eq', '/login');

    // Verifica se o perfil do usuário está presente após o login
    cy.get('.perfil-container').should('exist');
  });
  //realiza a primeira visita após uma sessão
  cy.visit('/');
});

Cypress.Commands.add('clearAllSessions', () => {
  // Limpa todas as cookies
  cy.clearCookies();

  // Limpa o armazenamento local
  cy.clearLocalStorage();

  // Limpa o armazenamento de sessão
  cy.window().then((win) => {
    win.sessionStorage.clear();
  });

  // Limpa qualquer sessão gerenciada pelo Cypress
  cy.then(() => {
    const session = Cypress.session;
    if (session) {
      Cypress.session.clearAllSavedSessions(); // Limpa todas as sessões salvas
    }
  });

  // Espera um pequeno tempo para garantir que tudo foi limpo
  cy.wait(100);
});