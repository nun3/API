import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';

Given('que eu envie uma requisição POST para a URL {string} com o corpo da requisição carregado do arquivo {string}', cy.postRequest);
Given('que eu envie uma requisição de edição PUT para a URL {string} com o corpo da requisição carregado do arquivo {string}', cy.updateRequest);
Given('que eu envie uma requisição GET para {string} e armazene no grupo {string} no subgrupo {string} o valor do campo {string}', cy.getRequest);
Given('que eu envie uma requisição Delete para {string}', cy.deleteRequest);
Given('que eu envie uma requisição Delete para {string} recuperando o ID de um Link', cy.deleteRequestLink);
Then('o status code da resposta deve ser {string}', (expectedStatusCode) => {
  cy.get('@deleteResponse').its('status').should('eq', Number(expectedStatusCode));
});

Given('que visito a pagina de contexto com a seguinte url {string}' , cy.VisitUrl);
When('envio uma requisição GET para {string} e armazene no grupo {string} no subgrupo {string} o valor do campo {string}', cy.getRequest);
Then('a requisição {string} para a URL {string} compara o corpo da resposta com o arquivo {string}', cy.validateResponseBody);
Then('envio uma requisição GET para {string} comparando o arquivo {string} com a resposta: grupo {string} subgrupo {string} e valor do campo {string}', cy.validateResponseBody);
Then('envio uma requisição GET para {string} e comparo a resposta com o arquivo mokado {string}', cy.validateResponseBody);

Given('que realizei o login na aplicação Filt', cy.Login);
  
When('aguardo a requisição {string} na url {string}',cy.waitRequest);

