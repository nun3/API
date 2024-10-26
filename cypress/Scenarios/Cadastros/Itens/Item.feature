# language: pt

Funcionalidade: Item

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar 
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Itens'
    E que cliquei no sub-menu 'Item' 

@BomCaminho @CRUD
Cenário: Item (Inclusão)
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Banana' 
    E preencho o campo 'Tipo do item' com o valor 'Produto Acabado' e seleciono a opção 'Produto Acabado'
    E preencho o campo 'Unidade de medida' com o valor 'Bombona' e seleciono a opção 'Bombona' 
    E preencho o campo 'Origem da mercadoria' com o valor '4' e seleciono a opção '4'
    E seleciono no campo 'Inativo para' a opção 'Todos' 
    E preencho o campo 'Gênero do item' com o valor 'Plantas vivas e produtos de floricultura' e seleciono a opção 'Plantas vivas e produtos de floricultura' 
    E preencho o campo 'Configuração da contabilização' com o valor '3' e seleciono a opção '3' 
    E preencho o campo 'Marca' com o valor '5' e seleciono a opção '5'
    E seleciono no campo 'Tipo lote' a opção 'Geral' 
    E preencho o campo 'Código do item para IPM' com o valor 'PR' e seleciono a opção 'PRGERAEE01'
    E preencho o campo 'Peso líquido' com o valor '200,00' 
    E preencho o campo 'Peso bruto' com o valor '285,45' 
    E preencho o campo 'Informação adicional' com o valor 'Teste' 
    E preencho o campo 'NCM' com o valor '84833021' e seleciono a opção '84833021'
    E preencho o campo 'CEST' com o valor '2806300' e seleciono a opção '2806300'
    E preencho o campo 'ICMS' com o valor '100' e seleciono a opção '100' 
    E preencho o campo 'PIS/COFINS' com o valor '200' e seleciono a opção '200'
    E preencho o campo 'Testing :' com o valor 'FERTILIZANTES' e seleciono a opção 'FERTILIZANTES' 
    E preencho o campo 'Teste2 :' com o valor 'ADJUVANTES' e seleciono a opção 'ADJUVANTES'
    E preencho o campo 'Local de estoque padrão – entradas' com o valor '2' e seleciono a opção '2'
    E preencho o campo 'Estoque mínimo' com o valor '555' 
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Item (Edição)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Banana Editado' 
    E preencho o campo 'Tipo do item' com o valor 'Matéria-Prima' e seleciono a opção 'Matéria-Prima'
    E preencho o campo 'Unidade de medida' com o valor 'Bloco' e seleciono a opção 'Bloco'
    E seleciono no campo 'Tipo' a opção 'Percentual'
    E preencho o campo 'Margem mínima' com o valor '22'
    E preencho o campo 'Margem esperada' com o valor '44'
    E preencho o campo 'Tipo desconto pontualidade' com o valor 'Teste' e seleciono a opção 'Teste Edit' 
    E preencho o campo 'PIS/COFINS' com o valor '206' e seleciono a opção '206'
    E preencho o campo 'Testing :' com o valor 'SEMENTES' e seleciono a opção 'SEMENTES' 
    E preencho o campo 'Teste2 :' com o valor '16 - SEMENTE DE COBERTURA DE SOLO/PASTAGEM' e seleciono a opção '16 - SEMENTE DE COBERTURA DE SOLO/PASTAGEM'
    E preencho o campo 'Estoque mínimo' com o valor '33' 
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Item (Exclusão)
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'