# language: pt

Funcionalidade: Grupo Empresarial

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Empresas'
    E que cliquei no sub-menu 'Grupo Empresarial'

@BomCaminho @CRUD
Cenário: Cadastrando um novo Grupo Empresarial
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Razão Social' com o valor 'Grupo de Teste'
    E preencho o campo 'Fantasia' com o valor 'Fantasia de Teste'
    E preencho o campo 'Raiz CNPJ' com o valor '[GERAR=NUMERO]'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso' 
    E armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Editando um Grupo Empresarial
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Razão Social' com o valor 'Grupo de Teste Editado'
    E preencho o campo 'Fantasia' com o valor 'Fantasia de Teste Editado'
    E preencho o campo 'Raiz CNPJ' com o valor '[GERAR=NUMERO]'
    Então que clico no botão Salvar no cabeçalho do formulário 
    E aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo um Grupo Empresarial
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão