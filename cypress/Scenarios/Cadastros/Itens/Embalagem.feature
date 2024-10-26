# language: pt

Funcionalidade: Embalagem

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Itens'
    E que cliquei no sub-menu 'Embalagem'

@BomCaminho @CRUD
Cenário: Cadastro de Embalagem
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Embalagem Teste'
    E preencho o campo 'Unidade da Embalagem' com o valor 'CR' e seleciono a opção 'CR'
    E preencho o campo 'Unidade de Conversão' com o valor 'CR' e seleciono a opção 'CR'
    E preencho o campo 'Fator de Conversão' com o valor '1,0000000000'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Edição de Embalagem
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Embalagem Editado'
    E preencho o campo 'Unidade da Embalagem' com o valor 'CT' e seleciono a opção 'Cento'
    E preencho o campo 'Unidade de Conversão' com o valor 'CT' e seleciono a opção 'Cento'
    E preencho o campo 'Fator de Conversão' com o valor '3,0000000000'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Exclusão de Embalagem
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'