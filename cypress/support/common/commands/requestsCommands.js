Cypress.Commands.add('waitRequest', (method, url) => { 
    cy.intercept({
        method: method,
        url: url
    }).as('request'); 
    cy.wait('@request', { timeout: 10000 });
});

Cypress.Commands.add('authenticatedRequest', (method, url, body = {}) => {
  cy.getAuthToken().then(() => {
    cy.request({
      method: method,
      url: url,
      body: body,
      headers: {
        'Authorization': `Bearer ${Cypress.env('access_token')}`
      }
    });
  });
});


Cypress.Commands.add('postRequest', (url, body = {}) => {

  const baseDir = Cypress.config('baseDir'); // Obtém o baseDir do cypress.config.js
  cy.task('findFile', { baseDir, fileName: `${body}.json` }).then((fullPath) => {

    const relativePath = fullPath.match(/(?<=cypress\\fixtures\\).*/);

    cy.log(`Caminho relativo encontrado: ${relativePath[0]}`);
    cy.log(`Caminho relativo encontrado: ${baseDir}`);
    // Carrega o requestBody do arquivo fixtures
    cy.fixture(relativePath[0]).then((requestBody) => {
      cy.authenticatedRequest("POST", url, requestBody)
        .then((response) => {
          // Verifica o status da resposta
          expect(response.status).to.eq(200);
          // Recupera o ID da resposta
          const id = response.body.id;
          const versao = response.body.versao;
          cy.log('Ultimo registro ID cadastrado:', id);
          Cypress.env('IDGLOBAL_API', id);
          Cypress.env('VERSAO', versao);
        });
    });

})
})

Cypress.Commands.add('revokeRequest', () => {
  const apiEndpoint = Cypress.env('URL_REVOKE');
  const body = Cypress.env('access_token')  // Verifica se o token está sendo recuperado corretamente
  
  cy.authenticatedRequest('POST', apiEndpoint, body)
    .as('revokeResponse')
    .then((response) => {
      expect(response.status).to.eq(200); // Verifica se o status é 200
      cy.log('Recurso revogado com sucesso:', response.body);
    });
});


Cypress.Commands.add('updateRequest', (url, body = '') => {

  const baseDir = Cypress.config('baseDir'); // Obtém o baseDir do cypress.config.js
  cy.task('findFile', { baseDir, fileName: `${body}.json` }).then((fullPath) => {

    const relativePath = fullPath.match(/(?<=cypress\\fixtures\\).*/);

    cy.log(`Caminho relativo encontrado: ${relativePath[0]}`);
    cy.log(`Caminho relativo encontrado: ${baseDir}`);


  cy.fixture(relativePath[0]).then((requestBody) => {
    const body = {
      id: Cypress.env('IDGLOBAL_API'),
      versao: Cypress.env('VERSAO'),
      ...requestBody  // Spread operator para incluir todo o conteúdo de requestBody
    };

    cy.log('Body da requisição:', JSON.stringify(body, null, 2)); // Log para verificar
    cy.authenticatedRequest('PUT', url, body, { failOnStatusCode: false })
      .then((response) => {
        cy.log('Status da resposta:', response.status);
        if (response.status !== 200) {
          cy.log('Erro na resposta:', response.body); // Log de erro
        } else {
          const id = response.body.id;
          const versao = response.body.versao;
          cy.log('Último registro ID cadastrado:', id);
          Cypress.env('IDGLOBAL_API', id);
          Cypress.env('VERSAO', versao);
        }
      });
  });
});
});


Cypress.Commands.add('deleteRequest', (url) => {
  const apiEndpoint = `${url}/${Cypress.env('IDGLOBAL_API')}`;
  cy.authenticatedRequest('DELETE', apiEndpoint)
    .as('deleteResponse') // Armazena a resposta como um alias
    .then((response) => {
      expect(response.status).to.eq(200); // Verifica se o status é 200
      cy.log('Recurso deletado com sucesso:', response.body);
    });
});


Cypress.Commands.add('getRequest', (url, grupo = '', subgrupo = '', value, body = '') => {

  const apiEndpoint = `${url}/${Cypress.env('IDGLOBAL_API')}`;
  
  cy.authenticatedRequest("GET", apiEndpoint, body)
    .then((response) => {
      expect(response.status).to.eq(200);

      let responseValue;

      // Determina o valor da resposta com base nos parâmetros fornecidos, similar ao validateResponseBody
      if (grupo && subgrupo && value) {
        responseValue = response.body[grupo]?.[subgrupo]?.[value];
      } else if (grupo && value) {
        responseValue = response.body[grupo]?.[value];
      } else if (value) {
        responseValue = response.body[value];
      } else {
        responseValue = response.body;
      }

      if (responseValue === undefined) {
        throw new Error("Grupo ou campo não existe ou não definido corretamente na resposta!");
      }

      // Armazena o valor na variável de ambiente do Cypress
      Cypress.env(`RESPONSE|${grupo}|${subgrupo}|${value}`, responseValue);
      
      // Loga o valor armazenado
      cy.log(`Valor do campo » ${value}: ${Cypress.env(`RESPONSE|${grupo}|${subgrupo}|${value}`)}`);
    });
});
