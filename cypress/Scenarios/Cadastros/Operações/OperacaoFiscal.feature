# language: pt

Funcionalidade: Operação Fiscal

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Operações'
    E que cliquei no sub-menu 'Operação Fiscal'

@BomCaminho 
Cenário: Operação Fiscal (Inclusão)
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Código' com o valor '[GERAR=NUMERO]' 
    E preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]' 
    E preencho o campo 'CFOP' com o valor '1101' e seleciono a opção '1101'  
    E seleciono o checkbox 'Operação de Transporte'
    E seleciono o checkbox 'Petróleo/Energia?'
    E seleciono o checkbox 'Movimenta Item no Imobilizado?'
    E seleciono o checkbox 'Calcula o Registro 1400 da EFD ICMS/IPI?'
    E seleciono o checkbox 'Movimenta Receita de Exportação?'
    E seleciono o checkbox 'Movimenta Financeiro?'
    E seleciono o checkbox 'Soma no Faturamento?'
    E seleciono o checkbox 'Fixação'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Operação Fiscal (Edição)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Descrição' com valor '[CONTEXTO=TEXTOGERADO]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=TEXTOGERADO]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]' 
    E preencho o campo 'CFOP' com o valor '1102' e seleciono a opção '1102'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário
    
@BomCaminho @CRUD
Cenário: Operação Fiscal (Exclusão)
  Dado que cliquei no botão Filtrar no cabeçalho de filtro
  E preencho o campo 'Descrição' com valor '[CONTEXTO=TEXTOGERADO]' na tela de Filtros
  E clico no botão Filtrar na tela de Filtros
  Quando excluo a linha com o valor '[CONTEXTO=TEXTOGERADO]' no grid do Browser
  Então aguardo o Dialogo de Confirmação de Exclusão
  E clico em 'Sim' no Dialogo de Confirmação de Exclusão
  E aguardo o status 'Registro removido com sucesso'    