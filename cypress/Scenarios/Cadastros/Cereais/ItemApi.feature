# language: pt

Funcionalidade: Item

Contexto: Acessar Módulo

    @BomCaminho @CRUD
Cenário: Item (Inclusão)
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Itens'
    E que cliquei no sub-menu 'Item'
    E que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'WUPA'
    E preencho o campo 'Tipo do item' com o valor 'Produto Acabado' e seleciono a opção 'Produto Acabado'
    E preencho o campo 'Unidade de medida' com o valor 'Bombona' e seleciono a opção 'Bombona'
    E preencho o campo 'Origem da mercadoria' com o valor '4' e seleciono a opção '4'
    # E seleciono no campo 'Inativo para' a opção 'Todos'
    # E preencho o campo 'Gênero do item' com o valor 'Plantas vivas e produtos de floricultura' e seleciono a opção 'Plantas vivas e produtos de floricultura'
    # E preencho o campo 'Configuração da contabilização' com o valor '3' e seleciono a opção '3'
    # E preencho o campo 'Marca' com o valor '5' e seleciono a opção '5'
    # E seleciono no campo 'Tipo lote' a opção 'Geral'
    # E preencho o campo 'Código do item para IPM' com o valor 'PR' e seleciono a opção 'PRGERAEE01'
    # E preencho o campo 'Peso líquido' com o valor '200,00'
    # E preencho o campo 'Peso bruto' com o valor '285,45'
    # E preencho o campo 'Informação adicional' com o valor 'Teste'
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
    E capturo o ID do link "Acessar Lotes do Item" na URL

    @BomCaminho @CRUD
Cenário: Item (Exclusão)
    Dado que eu envie uma requisição Delete para 'api/fiscal/item-filial' recuperando o ID de um Link
    Então o status code da resposta deve ser '200'
