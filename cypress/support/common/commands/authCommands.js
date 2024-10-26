Cypress.Commands.add('getAuthToken', (expectedStatus = 200) => {
  return cy.request({
    method: 'POST',
    url: Cypress.env('AUTH_TOKEN_URL'),
    form: true,
    body: {
      grant_type: 'password',
      username: JSON.stringify({ username: `${Cypress.env('USER_NAME')}`, cliente: `${Cypress.env('CLIENT_ID')}` }),
      password: Cypress.env('PASSWORD'),
    },
    headers: {
      'Authorization': `Basic ${Cypress.env('BASIC_AUTH')}`,
      'Content-Type': 'multipart/form-data'
    }
  }).then((response) => {
    if (response.status !== expectedStatus) {
      cy.log(`Erro durante a recuperação do token. Status esperado: ${expectedStatus}, Status recebido: ${response.status}`);
      throw new Error(`Erro durante a recuperação do token. Status esperado: ${expectedStatus}, Status recebido: ${response.status}`);
    }

    const newAccessToken = response.body.access_token;

    // Armazenar o token e informações em variáveis de ambiente
    Cypress.env('access_token', newAccessToken);
    Cypress.env('refresh_token', response.body.refresh_token);
    Cypress.env('token_expiration', new Date().getTime() + (response.body.expires_in * 1000));

    // cy.logTokenExpirationCountdown(); // Chamada opcional para logar a contagem do tempo de expiração do token

    return cy.wrap(newAccessToken, { log: false });
  });
});

Cypress.Commands.add('logTokenExpirationCountdown', () => {
  const currentTime = new Date().getTime();
  const tokenExpirationTime = Cypress.env('token_expiration');
  const timeRemaining = tokenExpirationTime - currentTime;

  const secondsRemaining = Math.floor(timeRemaining / 1000);
  const hoursRemaining = Math.floor(secondsRemaining / 3600);
  const minutesRemaining = Math.floor((secondsRemaining % 3600) / 60);
  const remainingSeconds = secondsRemaining % 60;
  
  // Calcular a data de expiração subtraindo 11 horas e 49 minutos
  const countdownInMs = 2 * 60 * 60 * 1000; // 11 horas e 49 minutos em milissegundos
  const tokenExpirationDate = new Date(tokenExpirationTime - countdownInMs);

  if (timeRemaining <= countdownInMs) {
    cy.log('Faltam menos de 2 horas para o token expirar. Realizaremos o logout antes da expiração.');
    cy.visit('/'); // Visita a página inicial ou outra página conforme necessário
    cy.wait(2000); // Espera 2 segundos antes de revogar o token
    cy.revokeRequest(); // Revoga o token
    cy.clearAllSessions(); // Limpa todas as sessões
    cy.createSession();
  } else {
    cy.log(`Token expira em ${hoursRemaining} horas, ${minutesRemaining} minutos e ${remainingSeconds} segundos. 
      Caso não realize um logout na aplicação, a troca do token será na data e hora agendada: ${tokenExpirationDate.toLocaleString()}. 
      Faltando menos de 2 horas para o token expirar, realizaremos o logout na aplicação.`);
  }
});




