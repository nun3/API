# language: pt

Funcionalidade: Desconto

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Financeiro'
    E que cliquei no sub-menu 'Desconto'

Cenário: Desconto (Inclusão)
    Dado que acessei a página do formulário 'financeiro/configuracao-desconto'
    E que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Teste Inc'
    E preencho o campo 'Desconto' com o valor '10,00'
    E seleciono no campo 'Opção de Pagamento' a opção 'Pontualidade'
    E seleciono no campo 'Forma de Desconto' a opção 'Valor'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

Cenário: Desconto (Edição)
    Dado que acessei a página do formulário 'financeiro/configuracao-desconto'
    E que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Teste Edit'
    E seleciono no campo 'Opção de Pagamento' a opção 'Sempre'
    E preencho o campo 'Desconto' com o valor '5,00'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

Cenário: Desconto (Exclusão)
    Dado que acessei a página do formulário 'financeiro/configuracao-desconto'
    E que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'


    