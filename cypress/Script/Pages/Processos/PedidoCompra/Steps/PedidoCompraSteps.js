import pedidoCompraActions from "../Actions/pedidoCompraActions";
import { When } from 'cypress-cucumber-preprocessor/steps';

When('clico no botão {string} no item com o valor {string} na coluna {string} do grid de Item na tela de Pedido Compra', (button, value, column) => {
    pedidoCompraActions.clickButtonItemGrid(button, value, column);
})
    