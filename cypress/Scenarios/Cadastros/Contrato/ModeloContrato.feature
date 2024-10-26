# language: pt 

 Funcionalidade: Modelo de Contrato

 Contexto: 
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Contrato'
    E que cliquei no sub-menu 'Modelo Contrato'

Cenário: Modelo de Contrato (Inclusão)
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Testes Inc'
    E preencho o campo 'Texto do Contrato' com o valor 'Teste'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário 
    
Cenário: Modelo de Contrato (Edição)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Testes Edit'
    E preencho o campo 'Texto do Contrato' com o valor 'Testes Edição'
    E que clico no botão Salvar no cabeçalho do formulário 
    Então aguardo o status 'Salvo com sucesso'
 
Cenário: Modelo de Contrato (Exclusão)
     Dado que cliquei no botão Filtrar no cabeçalho de filtro
     E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
     E clico no botão Filtrar na tela de Filtros
     Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
     Então aguardo o Dialogo de Confirmação de Exclusão
     E clico em 'Sim' no Dialogo de Confirmação de Exclusão
     E aguardo o status 'Registro removido com sucesso'
