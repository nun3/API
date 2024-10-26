# language: pt

Funcionalidade: Veículos

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Transportes'
    E que cliquei no sub-menu 'Veículos'

@BomCaminho @CRUD
Cenário: Veículo (Inclusão)
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Renavam' com o valor '[GERAR=NUMERO]'
    E preencho o campo 'Placa' com o valor '[GERAR=PLACA]'
    E preencho o campo 'Modelo' com o valor 'Modelo Teste'
    E preencho o campo 'Marca' com o valor 'Marca Teste'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Veículo (Edição)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro 
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Modelo' com o valor 'Modelo Teste Editado'
    E preencho o campo 'Marca' com o valor 'Marca Teste Editada'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Veículo (Exclusão)
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'