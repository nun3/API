import { When } from 'cypress-cucumber-preprocessor/steps';
import ModeloSerieActions from '../Actions/ModeloSerieActions';

When('que clico no botão Salvar no cabeçalho do formulário Modelo Série', () => {
    ModeloSerieActions.clicksave();
});
