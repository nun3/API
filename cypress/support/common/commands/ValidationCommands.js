Cypress.Commands.add('VisitUrl', (url) => {
  cy.visit(`${url}/form?id=${Cypress.env('IDGLOBAL_API')}`);
  cy.wait(5000);
})


// Cypress.Commands.add('validateResponseBody', (url, body = {}, grupo = '', subgrupo = '', value) => {
//   const apiEndpoint = `${url}/${Cypress.env('IDGLOBAL_API')}`;

//   const baseDir = Cypress.config('baseDir'); // Obtém o baseDir do cypress.config.js
//   cy.task('findFile', { baseDir, fileName: `${body}.json` }).then((fullPath) => {

//     const relativePath = fullPath.match(/(?<=cypress\\fixtures\\).*/);

//     cy.log(`Caminho relativo encontrado: ${relativePath[0]}`);
//     cy.log(`Caminho relativo encontrado: ${baseDir}`);

//     cy.fixture(`${relativePath[0]}`).then((requestBody) => {
//       cy.authenticatedRequest("GET", apiEndpoint, requestBody).then((response) => {
//         expect(response.status).to.eq(200);

//         let responseValue;
//         let expectedValue;

//         // Determina o valor da resposta com base nos parâmetros fornecidos
//         if (grupo && subgrupo && value) {
//           responseValue = response.body[grupo]?.[subgrupo]?.[value];
//           expectedValue = requestBody[grupo]?.[subgrupo]?.[value];
//         } else if (grupo && value) {
//           responseValue = response.body[grupo]?.[value];
//           expectedValue = requestBody[grupo]?.[value];
//         } else if (value) {
//           responseValue = response.body[value];
//           expectedValue = requestBody[value];
//         } else {
//           responseValue = response.body;
//           expectedValue = requestBody;
//         }

//         if (responseValue === undefined) {
//           throw new Error("Grupo ou campo não existe ou não definido corretamente na resposta!");
//         }

//         if (expectedValue === undefined) {
//           throw new Error("Grupo ou campo não existe ou não definido corretamente no arquivo fixture!");
//         }

//         cy.log('Response:', JSON.stringify(responseValue, null, 2));
//         cy.log('Expected:', JSON.stringify(expectedValue, null, 2));

//         // Compara os valores
//         expect(responseValue).to.deep.equal(expectedValue);
//       });
//     });
//   });
// });


/********
 * 
 * 
 * 
 * teste
 */

Cypress.Commands.add('validateResponseBody', (url, bodyFileName) => {
  const apiEndpoint = `${url}/${Cypress.env('IDGLOBAL_API')}`;
  
  const baseDir = Cypress.config('baseDir');
  cy.task('findFile', { baseDir, fileName: `${bodyFileName}.json` }).then((fullPath) => {
    const relativePath = fullPath.match(/(?<=cypress\\fixtures\\).*/);

    cy.log(`Caminho relativo encontrado: ${relativePath[0]}`);
    
    cy.fixture(`${relativePath[0]}`).then((expectedBody) => {
      cy.authenticatedRequest("GET", apiEndpoint).then((response) => {
        expect(response.status).to.eq(200);

        // Função recursiva para comparar somente propriedades do fixture
        function compareObjects(expected, actual) {
          for (const key in expected) {
            if (typeof expected[key] === 'object' && expected[key] !== null) {
              compareObjects(expected[key], actual[key]);
            } else {
              expect(actual[key]).to.equal(expected[key], `Verificando valor da chave: ${key}`);
            }
          }
        }

        // Comparação parcial usando a função recursiva
        cy.log('Comparando JSON parcialmente com base no fixture');
        compareObjects(expectedBody, response.body);

        cy.log('Response:', JSON.stringify(response.body, null, 2));
        cy.log('Expected:', JSON.stringify(expectedBody, null, 2));
      });
    });
  });
});
