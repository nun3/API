Cypress.Commands.add('saveId', (id) => {
    // Armazena o ID em uma variável global chamada 'IDGLOBAL'
    Cypress.env('IDGLOBAL', id);
    cy.log(`Salvo o IDGLOBAL: ${id}`);
});

Cypress.Commands.add('saveEnvVar', (varName, varValue) => {
    // Armazena o ID em uma variável global chamada 'IDGLOBAL'
    Cypress.env(varName, varValue);
    cy.log(`Salvo o ${varName}: ${varValue}`);
});

Cypress.Commands.add('saveCodigoOperacaoFiscal', (codigo) => {
    Cypress.env('CODIGO_OPERACAO_FISCAL', codigo);
    cy.log(`Salvando Código de Operação Fiscal: ${codigo}`);
});