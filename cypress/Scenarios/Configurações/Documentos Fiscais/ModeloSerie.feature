# language: pt

Funcionalidade: Modelo/Série

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Configurações'
    E que cliquei no menu 'Documentos Fiscais'
    E que cliquei no sub-menu 'Modelo/Série'

@BomCaminho
Cenário: Modelo/Série (Inclusão)
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Modelo Documento' com o valor 'Nota Fiscal' e seleciono a opção 'Nota Fiscal'
    E preencho o campo 'Série' com o valor '8'
    E preencho o campo 'Último Número Emitido' com o valor '5'
    E que clico no botão Salvar no cabeçalho do formulário Modelo Série
    E aguardo o status 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho
Cenário: Modelo/Série (Exclusão)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'