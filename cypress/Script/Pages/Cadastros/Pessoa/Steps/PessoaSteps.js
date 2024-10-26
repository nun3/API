import { When} from 'cypress-cucumber-preprocessor/steps';
import pessoaActions from '../Actions/PessoaActions';

When(`clico na aba {string} tela de Complemento Principal`, pessoaActions.clickTab);

When(`preencho o campo {string} com o valor {string} na tela de Pessoa`, pessoaActions.fielfield);

When(`clico no botão {string} no formulário de Pessoa`, pessoaActions.clickAdd);

When(`que clico no botão Salvar na Tela de Endereço`, pessoaActions.clickBtn);

When(`seleciono o campo {string} a opção {string} na Tela de Pessoa`, pessoaActions.selectItemDialog);

Given(`filtro pelo campo {string} com valor {string} na tela de Pessoas`, pessoaActions.filterScreenPessoa);

Given(`seleciono a linha com o valor {string} no grid de Pessoas`, pessoaActions.clickRowGridPessoa);