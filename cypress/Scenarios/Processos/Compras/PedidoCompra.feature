# language: pt

Funcionalidade: Pedido Compra

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Processos'
    E que cliquei no menu 'Compras'
    E que cliquei no sub-menu 'Pedido Compra'

@BomCaminho @CRUD
Cenário: Inclusão de Pedido de Compra com a situação: A pagar 
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Natureza de Operação' com o valor 'Pedido de Compra' e seleciono a opção 'PEDIDO DE COMPRA'
    E preencho o campo 'Título' com o valor 'Teste Inc'
    E preencho o campo 'Nº Pedido Fornecedor' com o valor '000'
    E preencho o campo 'Pessoa' com o valor 'Pessoa 29' e seleciono a opção 'Pessoa Teste 29' 
    E clico no botão 'Adicionar' no cabeçalho pertencente ao grupo 'Item'
    E preencho o campo 'Item' com o valor 'REVITA 20LT' e seleciono a opção 'REVITA 20LT' na tela modal de 'Item'
    E preencho o campo 'Quantidade' com o valor '1,000' na tela modal de 'Item'
    E preencho o campo 'Valor Unitário' com o valor '1,00000' na tela modal de 'Item'
    E que clico no botão 'Adicionar' no rodapé na tela modal de 'Item'
    E que clico no botão 'Cancelar' no rodapé na tela modal de 'Item'
    E seleciono no campo 'Tipo do Frete Gerencial' a opção 'Transporte Próprio por conta do Destinatário'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Editando um Pedido de Compra com a situação: A pagar 
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Título' com o valor 'Teste Edit'
    E preencho o campo 'Nº Pedido Fornecedor' com o valor '111'
    E clico no botão 'Editar' no item com o valor '1' na coluna '#' do grid de Item na tela de Pedido Compra
    E preencho o campo 'Quantidade' com o valor '2,000' na tela modal de 'Item'
    E direciono o foco para o campo 'Valor Unitário' na tela modal de 'Item'
    E preencho o campo 'Justificativa' com o valor 'Teste Automatizado de Alteração de Quantidade' na tela modal de 'Alteração de Quantidade'
    E que clico no botão 'Salvar' no rodapé na tela modal de 'Alteração de Quantidade'
    E preencho o campo 'Valor Unitário' com o valor '2,00000' na tela modal de 'Item'
    E que clico no botão 'Salvar' no rodapé na tela modal de 'Item'
    E aguardo o status 'Item editado com sucesso'
    E que clico no botão Salvar no cabeçalho do formulário 
    Então aguardo o status 'Salvo com sucesso'

    @BomCaminho @CRUD
Cenário: Excluindo um Pedido de Compra com a situação: A pagar 
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão  
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'