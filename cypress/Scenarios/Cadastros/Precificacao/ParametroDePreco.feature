# language: pt
Funcionalidade: Parâmetro de Preço

  Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Precificação'
    E que cliquei no sub-menu 'Parâmetro de Preço'

    @BomCaminho @CRUD
  Cenário: Parâmetro de Preço (Inclusão)
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Teste Inc'
    E preencho o campo 'Tabelas de Preço' com o valor 'CANARANA' e seleciono a opção 'CANARANA'
    E preencho o campo 'Filial' com o valor 'PESSOA 1' e seleciono a opção 'PESSOA 1'
    E preencho o campo 'Tipo de Pessoa' com o valor 'NÃO TRIBUTADO' e seleciono a opção 'NÃO TRIBUTADO'
    E preencho o campo 'Pessoa' com o valor 'PESSOA 1' e seleciono a opção 'PESSOA 1'
    E preencho o campo 'Marca' com o valor 'NITRO' e seleciono a opção 'NITRO'
    E clico no botão no campo 'Nível de Grupo'
    E seleciono a opção 'BIOLÓGICOS >> BIOLÓGICOS' na árvore na tela modal de 'Níveis de Grupo'
    E que clico no botão 'Adicionar' no rodapé na tela modal de 'Níveis de Grupo'
    E preencho o campo 'Vendedor' com o valor 'PESSOA 103' e seleciono a opção 'PESSOA 103'
    E preencho o campo 'Cidade' com o valor 'Pato Branco' e seleciono a opção 'Pato Branco'
    E preencho o campo 'UF' com o valor 'Paraná' e seleciono a opção 'Paraná'
    E seleciono no campo 'Base para Variação' a opção 'Número de Dias'
    E preencho o campo 'Número de Dias' com o valor '30'
    E preencho o campo 'Acréscimo' com o valor '10'
    E preencho o campo 'Desconto' com o valor '10'
    E marco a opção 'Comercial' no grupo de 'Tipo de Variação'
    E seleciono no campo 'Variação Por' a opção 'Marca'
    E clico no botão 'Adicionar' pertencente ao grupo 'Marca de Item'
    E preencho o campo 'Marca de Item' com o valor 'NITRO' e seleciono a opção 'NITRO' na tela modal de 'Marca de Item'
    E preencho o campo 'Acréscimo' com o valor '20' na tela modal de 'Marca de Item'
    E preencho o campo 'Desconto' com o valor '20' na tela modal de 'Marca de Item'
    E que clico no botão 'Confirmar' no rodapé na tela modal de 'Marca de Item'
    E seleciono no campo 'Aplicar em' a opção 'Marca'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

    @BomCaminho @CRUD
 Cenário: Parâmetro de Preço (Edição)
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Teste Editado'
    E removo do campo 'Tipo de Pessoa' a opção 'NÃO TRIBUTADO'
    E preencho o campo 'Tipo de Pessoa' com o valor 'CEREALISTA' e seleciono a opção 'CEREALISTA'
    E preencho o campo 'Pessoa' com o valor 'PESSOA 1' e seleciono a opção 'PESSOA 1'
    E removo do campo 'Marca' a opção 'NITRO'
    E preencho o campo 'Marca' com o valor 'AMAGGI' e seleciono a opção 'AMAGGI'
    E clico no botão no campo 'Nível de Grupo'
    E seleciono a opção 'FERTILIZANTES >> ADJUVANTES' na árvore na tela modal de 'Níveis de Grupo'
    E seleciono a opção 'FERTILIZANTES >> ADUBAÇÃO FOLIAR' na árvore na tela modal de 'Níveis de Grupo'
    E seleciono a opção 'FERTILIZANTES >> CORRETIVO SOLO' na árvore na tela modal de 'Níveis de Grupo'
    E seleciono a opção 'FERTILIZANTES >> FERTILIZANTES SOLO' na árvore na tela modal de 'Níveis de Grupo'
    E que clico no botão 'Adicionar' no rodapé na tela modal de 'Níveis de Grupo'
    E removo do campo 'Cidade' a opção 'Pato Branco'
    E preencho o campo 'Cidade' com o valor 'Curitiba' e seleciono a opção 'Curitiba'
    E marco a opção 'Racional' no grupo de 'Tipo de Variação'
    E clico no botão 'Adicionar' pertencente ao grupo 'Marca de Item'
    E preencho o campo 'Marca de Item' com o valor 'VIGOR MAIS' e seleciono a opção 'VIGOR MAIS' na tela modal de 'Marca de Item'
    E preencho o campo 'Acréscimo' com o valor '10' na tela modal de 'Marca de Item'
    E preencho o campo 'Desconto' com o valor '10' na tela modal de 'Marca de Item'
    E que clico no botão 'Confirmar' no rodapé na tela modal de 'Marca de Item'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

    @BomCaminho @CRUD
Cenário: Parâmetro de Preço (Exclusão)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'