import {gerarCPF, gerarCNPJ, gerarTexto, gerarNumero, gerarPlaca} from '../utils/generator'

function generatorInterpreter(input) {
    const inputMap = {
      'CPNJ': () => {return gerarCNPJ()},
      'CPF': () => {return gerarCPF()},
      'TEXTO': () => {return gerarTexto()},
      'NUMERO': () => {return gerarNumero()},
      '48NUMERO': () => {return gerarNumero({length : 48})}, //Corrigir isso na refatoração do dateProcessor
      'PLACA': () => {return gerarPlaca()},
    };
    return inputMap.hasOwnProperty(input) && inputMap[input]();   
} 

export { generatorInterpreter };