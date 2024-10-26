# language: pt 

Funcionalidade: Forma Parcelamento Data Fixa

Contexto: Acessar Módulo
  Dado que cliquei no menu Mostrar e Ocultar
  E que cliquei no menu principal 'Cadastros'
  E que cliquei no menu 'Financeiro'
  E que cliquei no sub-menu 'Forma Parcelamento' 

    @BomCaminho
Cenário: Forma Parcelamento Data Fixa (Inclusão)
  Dado que cliquei no botão Novo no cabeçalho de filtro
  Quando que clico no texto 'Data Fixa' 
  E preencho o campo 'Descrição' com o valor 'Teste Inc'
  E preencho o campo 'Data Fixa' com o valor '[DATA=7DIASAPOS]'
  E que clico no botão Salvar no cabeçalho do formulário
  Então aguardo o status 'Salvo com sucesso'
  E armazeno o valor do ID na tela de formulário

    @BomCaminho @CRUD
Cenário: Forma Parcelamento Data Fixa (Edição)
  Dado que cliquei no botão Filtrar no cabeçalho de filtro
  E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
  E clico no botão Filtrar na tela de Filtros
  E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
  Quando preencho o campo 'Descrição' com o valor 'Teste Edit'
  E preencho o campo 'Data Fixa' com o valor '[DATA=7DIASAPOS]'
  E que clico no botão Salvar no cabeçalho do formulário
  Então aguardo o status 'Salvo com sucesso'

   @BomCaminho @CRUD
Cenário: Forma Parcelamento Data Fixa (Exclusão)
  Dado que cliquei no botão Filtrar no cabeçalho de filtro
  E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
  E clico no botão Filtrar na tela de Filtros
  Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
  Então aguardo o Dialogo de Confirmação de Exclusão
  E clico em 'Sim' no Dialogo de Confirmação de Exclusão
  E aguardo o status 'Registro removido com sucesso'

   @BomCaminho
Cenário: Forma Parcelamento Data Definida (Inclusão)
  Dado que cliquei no botão Novo no cabeçalho de filtro
  Quando que clico no texto 'Data de Pagamento'                          
  E preencho o campo 'Descrição' com o valor 'Teste Inc'
  E que clico no botão Salvar no cabeçalho do formulário
  Então  aguardo o status 'Salvo com sucesso'                            
  E armazeno o valor do ID na tela de formulário

   @BomCaminho @CRUD
Cenário: Forma Parcelamento Data Definida (Edição)
  Dado que cliquei no botão Filtrar no cabeçalho de filtro
  E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
  E clico no botão Filtrar na tela de Filtros
  E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
  Quando preencho o campo 'Descrição' com o valor 'Teste Edit'
  E que clico no botão Salvar no cabeçalho do formulário
  Então aguardo o status 'Salvo com sucesso'                          

   @BomCaminho @CRUD
Cenário: Forma Parcelamento Data Definida (Exclusão)
  Dado que cliquei no botão Filtrar no cabeçalho de filtro
  E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
  E clico no botão Filtrar na tela de Filtros
  Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
  Então aguardo o Dialogo de Confirmação de Exclusão
  E clico em 'Sim' no Dialogo de Confirmação de Exclusão
  E aguardo o status 'Registro removido com sucesso' 
                                                  
   @BomCaminho
Cenário: Forma Parcelamento Normal (Inclusão)
  Dado que cliquei no botão Novo no cabeçalho de filtro
  Quando preencho o campo 'Descrição' com o valor 'Testes'
  E seleciono o checkbox 'Utilizada para Compras'
  E clico no botão 'Gerar' no cabeçalho pertencente ao grupo 'Gerar'
  E preencho o campo 'Número de Parcelas' com o valor '3' na tela modal de 'Gerar Parcelamento Normal' 
  E preencho o campo 'Carência da Primeira Parcela' com o valor '1' na tela modal de 'Gerar Parcelamento Normal'
  E preencho o campo 'Dias entre Parcelas' com o valor '1' na tela modal de 'Gerar Parcelamento Normal'
  E que clico no botão 'Gerar' no rodapé na tela modal de 'Gerar Parcelamento Normal'
  E que clico no botão Salvar no cabeçalho do formulário
  Então aguardo o status 'Salvo com sucesso'
  E armazeno o valor do ID na tela de formulário

   @BomCaminho @CRUD
Cenário: Forma Parcelamento Normal (Edição)
  Dado que cliquei no botão Filtrar no cabeçalho de filtro
  E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
  E clico no botão Filtrar na tela de Filtros
  E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
  Quando preencho o campo 'Descrição' com o valor 'Teste Edit'
  E clico no botão 'Gerar' no cabeçalho pertencente ao grupo 'Gerar' 
  E preencho o campo 'Número de Parcelas' com o valor '5' na tela modal de 'Gerar Parcelamento Normal'
  E preencho o campo 'Carência da Primeira Parcela' com o valor '5' na tela modal de 'Gerar Parcelamento Normal'
  E preencho o campo 'Dias entre Parcelas' com o valor '5' na tela modal de 'Gerar Parcelamento Normal'
  E que clico no botão 'Gerar' no rodapé na tela modal de 'Gerar Parcelamento Normal' 
  E que clico no botão Salvar no cabeçalho do formulário
  Então aguardo o status 'Salvo com sucesso'

   @BomCaminho @CRUD
Cenário: Forma Parcelamento Normal (Exclusão)
  Dado que cliquei no botão Filtrar no cabeçalho de filtro
  E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
  E clico no botão Filtrar na tela de Filtros
  Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
  Então aguardo o Dialogo de Confirmação de Exclusão
  E clico em 'Sim' no Dialogo de Confirmação de Exclusão
  E aguardo o status 'Registro removido com sucesso'
  
   @BomCaminho
Cenário: Forma Parcelamento do tipo Semanal (Inclusão)
  Dado que cliquei no botão Novo no cabeçalho de filtro
  Quando que clico no texto 'Semanal' 
  E preencho o campo 'Descrição' com o valor 'Teste Inc'
  E seleciono o checkbox 'Utilizada para Compras'
  E seleciono no campo 'Dia' a opção 'Segunda-Feira'
  E seleciono no campo 'Ordem do dia no Mês' a opção 'Primeira'
  E seleciono o checkbox 'Iniciar no Mês Seguinte'
  E que clico no botão Salvar no cabeçalho do formulário
  Então aguardo o status 'Salvo com sucesso'
  E armazeno o valor do ID na tela de formulário

   @BomCaminho @CRUD
Cenário: Forma Parcelamento do tipo Semanal (Edição)
  Dado que cliquei no botão Filtrar no cabeçalho de filtro
  E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
  E clico no botão Filtrar na tela de Filtros
  E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
  Quando preencho o campo 'Descrição' com o valor 'Teste Edit'
  E seleciono no campo 'Dia' a opção 'Terça-Feira'
  E seleciono no campo 'Ordem do dia no Mês' a opção 'Segunda'
  E que clico no botão Salvar no cabeçalho do formulário
  Então aguardo o status 'Salvo com sucesso'

   @BomCaminho @CRUD
Cenário: Forma Parcelamento do tipo Semanal (Exclusão)
  Dado que cliquei no botão Filtrar no cabeçalho de filtro
  E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
  E clico no botão Filtrar na tela de Filtros
  Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
  Então aguardo o Dialogo de Confirmação de Exclusão
  E clico em 'Sim' no Dialogo de Confirmação de Exclusão
  E aguardo o status 'Registro removido com sucesso'