# language: pt

Funcionalidade: Composição Valor de Serviço

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Transportes'
    E que cliquei no sub-menu 'Composição Valor Serviço'

@BomCaminho @CRUD
Cenário: Composição Valor de Serviço (Inclusão)
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]' 
    E preencho o campo 'Descrição para CTe' com o valor 'CTe Testing' 
    E seleciono o checkbox 'Considera no Total da Prestação'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário 

@BomCaminho @CRUD
Cenário: Composição Valor de Serviço (Edição)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Valor de Serviço Testing Editado' 
    E preencho o campo 'Descrição para CTe' com o valor 'CTe Testing Editado' 
    E seleciono o checkbox 'Considera no Valor a Receber'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Composição Valor de Serviço (Exclusão)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'
