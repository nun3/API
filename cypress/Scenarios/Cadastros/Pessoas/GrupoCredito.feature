# language: pt

Funcionalidade: Grupo de Crédito

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Pessoas'
    E que cliquei no sub-menu 'Grupo de Crédito'

    @BomCaminho @CRUD
Cenário: Cadastro de Grupo de Crédito (Inclusão)
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Testes'
    E preencho o campo 'Data Próxima Revisão' com o valor '[DATA=DATAATUAL]'
    E preencho o campo 'Limite' com o valor '50,00' 
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

    @BomCaminho @CRUD
Cenário: Cadastro de Grupo de Crédito (Edição)
    Dado que clico no botão Filtrar no cabeçalho de filtro
    Quando preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    E preencho o campo 'Descrição' com o valor 'Teste Edit'
    E preencho o campo 'Data Próxima Revisão' com o valor '[DATA=DATAATUAL]'
    E preencho o campo 'Limite' com o valor '100,00' 
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

    @BomCaminho @CRUD
Cenário: Grupo de Crédito (Exclusão)
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'

    


