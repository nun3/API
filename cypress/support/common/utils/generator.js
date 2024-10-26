function gerarCPF({ comPontuacao = false, envVar = 'CPFGERADO' } = {}) {
    const randomDigit = () => Math.floor(Math.random() * 10);
    const gerarArrayAleatorio = (total) => Array.from({ length: total }, randomDigit);

    const calcularDigitoVerificador = (base) => {
        let sum = 0;
        for (let i = 0; i < base.length; i++) {
            sum += base[i] * (base.length + 1 - i);
        }
        const remainder = sum % 11;
        return remainder < 2 ? 0 : 11 - remainder;
    };

    let cpfNumeros = gerarArrayAleatorio(9);
    cpfNumeros.push(calcularDigitoVerificador(cpfNumeros)); // Primeiro dígito verificador
    cpfNumeros.push(calcularDigitoVerificador(cpfNumeros)); // Segundo dígito verificador (com o primeiro já adicionado)

    let cpfFormatado = cpfNumeros.join('');
    if (comPontuacao) {
        cpfFormatado = cpfFormatado.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, '$1.$2.$3-$4');
    }

    cy.saveEnvVar(envVar, cpfFormatado);
    return cpfFormatado;
}



function gerarCNPJ({ comPontuacao = false, envVar = 'CNPJGERADO' } = {}) {
    const randomDigit = () => Math.floor(Math.random() * 10);
    const gerarBloco = () => `${randomDigit()}${randomDigit()}.${randomDigit()}${randomDigit()}${randomDigit()}`;
    const cnpjBlocks = [gerarBloco(), gerarBloco(), gerarBloco(), '0001'];

    let cnpj = cnpjBlocks.join('');
    if (comPontuacao) {
        cnpj = `${cnpjBlocks[0]}/${cnpjBlocks[1]}/${cnpjBlocks[2]}-${cnpjBlocks[3]}`;
    }

    cy.saveEnvVar(envVar, cnpj);
    return cnpj;
}

function gerarTexto({ length = 15, envVar = 'TEXTOGERADO' } = {}) {
    const caracteres = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    let resultado = '';

    for (let i = 0; i < length; i++) {
        resultado += caracteres.charAt(Math.floor(Math.random() * caracteres.length));
    }

    cy.saveEnvVar(envVar, resultado);
    return resultado;
}

function gerarNumero({ length = 15, envVar = 'NUMEROGERADO' } = {}) {
    let maximo = Math.pow(10, length) - 1;
    let numero = Math.floor(Math.random() * (maximo + 1));
    let numeroFormatado = numero.toString().padStart(length, '0');
    cy.saveEnvVar(envVar, numeroFormatado);
    return numeroFormatado;
}

function gerarPlaca({ envVar = 'NUMEROGERADO' } = {}) {
    let letras = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    let numeros = '0123456789';

    let letrasAleatorias = '';
    for (let i = 0; i < 3; i++) {
        letrasAleatorias += letras.charAt(Math.floor(Math.random() * letras.length));
    }

    let numerosAleatorios = '';
    for (let i = 0; i < 4; i++) {
        numerosAleatorios += numeros.charAt(Math.floor(Math.random() * numeros.length));
    }

    let placa = letrasAleatorias + numerosAleatorios;
    cy.saveEnvVar(envVar, placa);
    return placa;
}

export { gerarCPF, gerarCNPJ, gerarTexto, gerarNumero, gerarPlaca };