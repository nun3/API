# language: pt

Funcionalidade: Local de Estoque

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu "Itens"
    E que cliquei no sub-menu "Local de Estoque"

@BomCaminho 
Cenário: Local de Estoque (Inclusão)
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Local de Estoque testing'
    E preencho o campo 'CEP' com o valor '85501-530'
    E preencho o campo 'Número' com o valor '1710'  
    E preencho o campo 'Complemento' com o valor 'Prédio Vermelho' 
    E que clico no botão Salvar no cabeçalho do formulário
    E aguardo o status 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário
  
@BomCaminho @CRUD
Cenário: Local de Estoque (Edição)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Local de Estoque Editado' 
    E preencho o campo 'CEP' com o valor '85501150' 
    E preencho o campo 'Número' com o valor '850' 
    E preencho o campo 'Complemento' com o valor 'Apartamento' 
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    
@BomCaminho @CRUD
Cenário: Local de Estoque (Exclusão)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    E aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    Então aguardo o status 'Registro removido com sucesso' 