const { defineConfig } = require("cypress");
const cucumber = require('cypress-cucumber-preprocessor').default;
const fs = require('fs');
const path = require('path');

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      on('file:preprocessor', cucumber());
      on('after:spec', (spec, results) => {
        if (results && results.video) {
          // Verificar se houve falhas em alguma tentativa de reexecução
          const failures = results.tests.some((test) =>
            test.attempts.some((attempt) => attempt.state === 'failed')
          );
          if (!failures) {
            // Excluir o vídeo se o teste passou e não houve tentativas de reexecução com falha
            fs.unlinkSync(results.video);
          }
        }
      });

      on('task', {
        writeFile({ filePath, content }) {
          fs.writeFileSync(filePath, JSON.stringify(content, null, 2));
          return null;
        }
      });

      return require('./cypress/plugins/index.js')(on, config)
      
    },
    defaultCommandTimeout: 40000,
    screenshotOnRunFailure: true,
    video: true,
    retries: {
      runMode: 1, // Número de tentativas de reexecução
      openMode: 0, // Número de tentativas de reexecução no modo de abertura do Cypress
    },
    numTestsKeptInMemory: 0,
    projectId: "u4zxrj",
    testIsolation: false,
    cacheAcrossSpecs: true,
    chromeWebSecurity: false,
    baseUrl: "https://app.filterp.com.br/",
    specPattern: "cypress/Scenarios/**/*.{js,jsx,ts,tsx,feature}",
    viewportWidth: 1920,
    viewportHeight: 1080,
    baseDir: path.join(__dirname, 'cypress', 'fixtures')
  },
});