import { When } from 'cypress-cucumber-preprocessor/steps';
import NaturezaDeOperacaoActions from '../Natureza de Operação/NaturezaDeOperacaoActions';

When('clico na aba {string} na tela de Natureza de Operação',  NaturezaDeOperacaoActions.selectButtonTab);