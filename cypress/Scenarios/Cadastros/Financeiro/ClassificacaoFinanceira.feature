# language: pt

Funcionalidade: Classificação Financeira

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Financeiro'
    E que cliquei no sub-menu 'Classificação Financeira'

    @BomCaminho @CRUD
Cenário: Inclusão de Classificação Financeira do tipo Recebimento
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Teste Inc'
    E na caixa de seleção 'Tipo' marco a opção 'Receber'
    E preencho o campo 'Conta Contábil Crédito' com o valor 'OUTRAS DISPONIBILIDADES' e seleciono a opção 'OUTRAS DISPONIBILIDADES'
    E preencho o campo 'Histórico' com o valor 'Descrição de Teste' e seleciono a opção 'Descrição de Teste'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

    @BomCaminho @CRUD
Cenário: Edição de Classificação Financeira do tipo Recebimento
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Teste Edit'
    E preencho o campo 'Histórico' com o valor 'Descrição de Teste Editado' e seleciono a opção 'Descrição de Teste Editado'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

    @BomCaminho @CRUD
Cenário: Exclusão de classificação Financeira do tipo Recebimento
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'

    @BomCaminho @CRUD
Cenário: Inclusão de Classificação Financeira do tipo Pagamento
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Teste Inc'
    E na caixa de seleção 'Tipo' marco a opção 'Pagar'
    E preencho o campo 'Conta Contábil Débito' com o valor 'OUTRAS DISPONIBILIDADES' e seleciono a opção 'OUTRAS DISPONIBILIDADES'
    E preencho o campo 'Histórico' com o valor 'Descrição de Teste' e seleciono a opção 'Descrição de Teste'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

    @BomCaminho @CRUD
Cenário: Edição de Classificação Financeira do tipo Pagamento
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Teste Edit'
    E preencho o campo 'Histórico' com o valor 'Descrição de Teste Editado' e seleciono a opção 'Descrição de Teste Editado'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

    @BomCaminho @CRUD
Cenário: Exclusão de classificação Financeira do tipo Pagamento
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'