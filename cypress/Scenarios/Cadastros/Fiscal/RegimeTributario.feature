# language: pt

Funcionalidade: Regime Tributário

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Fiscal'
    E que cliquei no sub-menu 'Regime Tributário'

@BomCaminho @CRUD
Cenário: Cadastrando um novo Regime Tributário
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando seleciono no campo 'Regime Tributário' a opção 'Lucro Real'
    E preencho o campo 'Data Inicial' com o valor '26/06/2026'
    E preencho o campo 'Data Final' com o valor '26/06/2030'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Editando um Regime Tributário
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando seleciono no campo 'Regime Tributário' a opção 'Lucro Real'
    E preencho o campo 'Data Inicial' com o valor '26/06/2026'
    E preencho o campo 'Data Final' com o valor '26/06/2030'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo um Regime Tributário
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão 
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'