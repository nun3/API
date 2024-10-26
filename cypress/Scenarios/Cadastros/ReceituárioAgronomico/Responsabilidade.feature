# language: pt

Funcionalidade: Responsabilidade Técnica

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Receituário Agronômico'
    E que cliquei no sub-menu 'Responsabilidade Técnica'

    @BomCaminho @CRUD
Cenário: Responsabilidade Técnica (Inclusão)
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Responsável Técnico' com o valor 'PESSOA 1' e seleciono a opção 'PESSOA 1'
    E preencho o campo 'Registro A.R.T/T.R.T' com o valor 'Testes'
    E preencho o campo 'Série' com o valor '55'
    E preencho o campo 'Receita Inicial' com o valor '11'
    E preencho o campo 'Receita Final' com o valor '12'
    E preencho o campo 'Avisar Faltando X Receitas' com o valor '5'
    E preencho o campo 'Validade Máxima' com o valor '16/07/2025'
    E seleciono no campo 'Controle de Contratos' a opção 'NÃO'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

    @BomCaminho @CRUD
Cenário: Responsabilidade Técnica (Edição)
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Avisar Faltando X Receitas' com o valor '10'
    E preencho o campo 'Validade Máxima' com o valor '16/07/2026'
    E que clico no botão Salvar no cabeçalho do formulário
    E aguardo o status 'Salvo com sucesso'

    @BomCaminho @CRUD
Cenário: Responsabilidade Técnica (Exclusão)
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    Então aguardo o status 'Registro removido com sucesso'