# language: pt

Funcionalidade: Tabela de Melhoramento

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Cereais'
    E que cliquei no sub-menu 'Tabela de Melhoramento'

    @BomCaminho @CRUD
Cenário: Cadastro de Tabela de Melhoramento
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Testes Inc'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

    @BomCaminho @CRUD
Cenário: Edição de Tabela de Melhoramento
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Testes Edit'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

    @BomCaminho @CRUD
Cenário: Exclusão de Tabela de Melhoramento
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'

    @BomCaminho @CRUD
Cenário: Cadastro de Tabela de Melhoramento com PH
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Testes Inc'
    E clico no botão 'ADICIONAR' com o título 'Melhoramento de PH' para abrir o formulário
    E preencho o campo 'PH Inicial' com o valor '11' na tela modal de 'Melhoramento de PH'
    E preencho o campo 'PH Final' com o valor '12' na tela modal de 'Melhoramento de PH'
    E preencho o campo 'Valor de Melhoramento' com o valor '20' na tela modal de 'Melhoramento de PH'
    E que clico no botão 'Salvar' no rodapé na tela modal de 'Melhoramento de PH'
    E aguardo o status 'Regra adicionada com sucesso'
    E clico no botão 'ADICIONAR' com o título 'Melhoramento de PH' para abrir o formulário
    E preencho o campo 'PH Final' com o valor '14' na tela modal de 'Melhoramento de PH'
    E preencho o campo 'Valor de Melhoramento' com o valor '25' na tela modal de 'Melhoramento de PH'
    E que clico no botão 'Salvar' no rodapé na tela modal de 'Melhoramento de PH'
    E aguardo o status 'Regra adicionada com sucesso'
    E que clico no botão Salvar no cabeçalho do formulário
    E aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

    @BomCaminho @CRUD
Cenário: Edição de Tabela de Melhoramento com PH
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Testes Edit'
    E clico no botão Editar correspondente ao valor '2'
    E preencho o campo 'Valor de Melhoramento' com o valor '29' na tela modal de 'Melhoramento de PH'
    E que clico no botão 'Salvar' no rodapé na tela modal de 'Melhoramento de PH'
    E aguardo o status 'Regra editada com sucesso'
    E que clico no botão Salvar no cabeçalho do formulário
    E aguardo o status 'Salvo com sucesso'
    
    @BomCaminho @CRUD
Cenário: Exclusão de Tabela de Melhoramento com PH
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'