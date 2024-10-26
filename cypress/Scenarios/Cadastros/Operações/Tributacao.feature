# language: pt

Funcionalidade: Tributação

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Operações'
    E que cliquei no sub-menu 'Tributação'

     @BomCaminho @CRUD
  Cenário: Tributação (Inclusão)
    Dado que cliquei no botão Novo no cabeçalho de filtro
    E seleciono no campo 'Tributo' a opção 'IPI'
    E preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
    E clico no botão 'Adicionar Tributação' no cabeçalho pertencente ao grupo 'Detalhe'
    E clico no botão 'Entrada' no grupo de botões pertencente a 'Operação' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'Data Inicial' com o valor '[DATA=DATAATUAL]' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'Data Final' com o valor '[DATA=DATAATUAL]' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'Perfil Tributário' com o valor 'Revendas' e seleciono a opção 'Revendas' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'NCM' com o valor '74082913' e seleciono a opção '74082913' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'Tipo de Operação' com o valor 'AE' e seleciono a opção 'AE' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'Natureza da Operação' com o valor 'COMPRA DE LENHA' e seleciono a opção 'COMPRA DE LENHA' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'UF Origem' com o valor 'ACRE' e seleciono a opção 'Acre' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'UF Destino' com o valor 'ALAGOAS' e seleciono a opção 'Alagoas' na tela modal de 'Detalhes da Tributação'
    E seleciono o checkbox 'Manter Dados após Adicionar' na tela modal de 'Detalhes da Tributação'
    E clico na aba 'IPI' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'CST' com o valor '01' e seleciono a opção '01' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'Base Cálculo' com o valor '1' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'Alíquota' com o valor '2' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'Código da Mensagem' com o valor 'De' e seleciono a opção 'Descrição de Teste Editado' na tela modal de 'Detalhes da Tributação'
    E preencho o campo 'Código Enquadramento IPI' com o valor '001' e seleciono a opção '001' na tela modal de 'Detalhes da Tributação'
    E seleciono o checkbox 'Soma Frete na Base' na tela modal de 'Detalhes da Tributação'
    E seleciono o checkbox 'Soma Despesas Acessórias na Base' na tela modal de 'Detalhes da Tributação'
    E seleciono o checkbox 'Soma Seguro na Base' na tela modal de 'Detalhes da Tributação'
    E seleciono o checkbox 'Deduz Desconto na Base' na tela modal de 'Detalhes da Tributação'
    E seleciono o checkbox 'Soma ICMS-ST na base' na tela modal de 'Detalhes da Tributação'
    E que clico no botão 'Adicionar' no rodapé na tela modal de 'Detalhes da Tributação'
    E que clico no botão 'Cancelar' no rodapé na tela modal de 'Detalhes da Tributação'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

    @BomCaminho @CRUD
Cenário: Tributação
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Descrição' com valor '[CONTEXTO=TEXTOGERADO]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=TEXTOGERADO]' no grid do Browser
    E preencho o campo 'Descrição' com o valor '[CONTEXTO=TEXTOGERADO]'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

    @BomCaminho @CRUD
Cenário: Exclusão de Cotação Simples
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Descrição' com valor '[CONTEXTO=TEXTOGERADO]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=TEXTOGERADO]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    Então aguardo o status 'Registro removido com sucesso'