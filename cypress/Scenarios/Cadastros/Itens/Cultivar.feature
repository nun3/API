# language: pt

Funcionalidade: Cultivar

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Itens'
    E que cliquei no sub-menu 'Cultivar'

@BomCaminho @CRUD
Cenário: Cadastro de Cultivar
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
    E preencho o campo 'Cultura' com o valor 'abacate' e seleciono a opção 'ABACATE'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Edição de Cultivar
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Descrição' com valor '[CONTEXTO=TEXTOGERADO]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=TEXTOGERADO]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
    E preencho o campo 'Cultura' com o valor 'abacaxi' e seleciono a opção 'ABACAXI'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Exclusão de Cultivar
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Descrição' com valor '[CONTEXTO=TEXTOGERADO]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor 'ABACAXI' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    Então aguardo o status 'Registro removido com sucesso'