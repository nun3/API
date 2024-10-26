import { When } from 'cypress-cucumber-preprocessor/steps';
import tabelaMelhoramentoActions from '../Actions/tabelaMelhoramentoActions';

When(`clico no botão {string} com o título {string} para abrir o formulário`, tabelaMelhoramentoActions.clickBtnModalAdd);
When(`clico no botão Editar correspondente ao valor {string}`, tabelaMelhoramentoActions.clickBtnEdit);