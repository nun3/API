# language: pt

Funcionalidade: Informação Complementar

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Fiscal'
    E que cliquei no sub-menu 'Informação Complementar'

@BomCaminho @CRUD
Cenário: Cadastrando uma nova Informação Complementar
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando seleciono no campo 'Tipo de Documento' a opção 'NF-e'
    E seleciono no campo 'Tipo de Informação' a opção 'Informações adicionais de interesse do Contribuinte'
    E preencho o campo 'Descrição' com o valor 'Descrição de Teste'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Editando uma Informação Complementar
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando seleciono no campo 'Tipo de Documento' a opção 'CT-e'
    E seleciono no campo 'Tipo de Informação' a opção 'Informações adicionais de interesse do Fisco'
    E preencho o campo 'Identificação' com o valor 'Ident. de Teste'
    E preencho o campo 'Descrição' com o valor 'Descrição de Teste Editado'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo uma Informação Complementar
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão  
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'