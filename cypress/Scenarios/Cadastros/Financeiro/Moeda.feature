# language: pt

Funcionalidade: Moeda

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Financeiro'
    E que cliquei no sub-menu 'Moeda'

Cenário: Moeda (Inclusão)
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Símbolo' com o valor 'Test'
    E preencho o campo 'Nome Singular' com o valor 'Teste'
    E seleciono no campo 'Gênero' a opção 'Masculino'
    E preencho o campo 'Quantidade Decimais' com o valor '3'
    E preencho o campo 'Nome Plural' com o valor 'Testes'
    E preencho o campo 'Centavos Singular' com o valor 'Testes'
    E preencho o campo 'Centavos Plural' com o valor 'Testes'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

Cenário: Moeda (Edição)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    E preencho o campo 'Símbolo' com o valor 'Edit'
    E preencho o campo 'Nome Singular' com o valor 'Edição'
    E seleciono no campo 'Gênero' a opção 'Feminino'
    E preencho o campo 'Quantidade Decimais' com o valor '2'
    E preencho o campo 'Nome Plural' com o valor 'Edição'
    E preencho o campo 'Centavos Singular' com o valor 'Edição'
    E preencho o campo 'Centavos Plural' com o valor 'Edição'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

Cenário: Moeda (Exclusão)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'


