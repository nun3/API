# language: pt

Funcionalidade: Cadastro

@BomCaminho @CRUD
Cenário: Item (Cadastro)
Dado que eu envie uma requisição POST para a URL 'api/fiscal/item-filial' com o corpo da requisição carregado do arquivo 'itemRequestBody'
Quando envio uma requisição GET para 'api/fiscal/item-filial' e armazene no grupo 'item' no subgrupo '' o valor do campo 'descricao'
Então envio uma requisição GET para 'api/fiscal/item-filial' comparando o arquivo 'itemRequestBody' com a resposta: grupo 'item' subgrupo '' e valor do campo 'descricao'

@BomCaminho @CRUD
Cenário: Item (Edição)
Dado que eu envie uma requisição de edição PUT para a URL 'api/fiscal/item-filial' com o corpo da requisição carregado do arquivo 'itemRequestBodyEditado'
E que eu envie uma requisição GET para 'api/fiscal/item-filial' e armazene no grupo 'item' no subgrupo '' o valor do campo 'descricao'
E que eu envie uma requisição GET para 'api/fiscal/item-filial' e armazene no grupo 'item' no subgrupo '' o valor do campo 'id'
Então envio uma requisição GET para 'api/fiscal/item-filial' comparando o arquivo 'itemRequestBodyEditado' com a resposta: grupo 'item' subgrupo '' e valor do campo 'descricao'

@BomCaminho @CRUD
Cenário: Item (Exclusão)
Dado que cliquei no menu Mostrar e Ocultar
E que cliquei no menu principal 'Cadastros'
E que cliquei no menu 'Itens'
E que cliquei no sub-menu 'Item'
Dado que cliquei no botão Filtrar no cabeçalho de filtro
E preencho o campo 'Código' com valor '[CONTEXTO=RESPONSE|item||id]' na tela de Filtros
E clico no botão Filtrar na tela de Filtros
Quando excluo a linha com o valor '[CONTEXTO=RESPONSE|item||id]' no grid do Browser
Então aguardo o Dialogo de Confirmação de Exclusão
E clico em 'Excluir' no Dialogo de Confirmação de Exclusão
E aguardo o status 'Registro removido com sucesso'