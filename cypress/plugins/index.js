// cypress/plugins/index.js
const fs = require('fs');
const path = require('path');

/**
 * Função para encontrar um arquivo recursivamente.
 * @param {string} dir - O diretório onde a busca começa.
 * @param {string} fileName - O nome do arquivo que está sendo procurado.
 * @returns {string|null} - O caminho absoluto do arquivo ou null se não for encontrado.
 */
function findFileRecursively(dir, fileName) {
    const files = fs.readdirSync(dir);
    
    for (const file of files) {
        const filePath = path.join(dir, file);
        const stat = fs.statSync(filePath);
        
        if (stat.isDirectory()) {
            const found = findFileRecursively(filePath, fileName);
            if (found) {
                return found;
            }
        } else if (file === fileName) {
            return filePath;
        }
    }
    return null;
}

/**
 * Registrar as tarefas para o Cypress
 */
module.exports = (on) => {
    on('task', {
        findFile({ baseDir, fileName }) {
            const absoluteFilePath = findFileRecursively(baseDir, fileName);
            if (absoluteFilePath) {
                return path.relative(process.cwd(), absoluteFilePath);
            }
            return null;
        }
    });
};