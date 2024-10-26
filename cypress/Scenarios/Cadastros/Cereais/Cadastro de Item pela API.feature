# language: pt

Funcionalidade: Cadastro

@BomCaminho @CRUD
Cenário: Item (Cadastro)
Dado que eu envie uma requisição POST para a URL 'api/fiscal/item-filial' com o corpo da requisição carregado do arquivo 'itemRequestBody'
Quando envio uma requisição GET para 'api/fiscal/item-filial' e armazene no grupo 'item' no subgrupo '' o valor do campo 'descricao'
# Então envio uma requisição GET para 'api/fiscal/item-filial' comparando o arquivo 'itemRequestBody' com a resposta: grupo 'item' subgrupo '' e valor do campo 'descricao'
Então envio uma requisição GET para 'api/fiscal/item-filial' e comparo a resposta com o arquivo mokado 'itemRequestBody'

@BomCaminho @CRUD
Cenário: Item (Edição)
Dado que eu envie uma requisição de edição PUT para a URL 'api/fiscal/item-filial' com o corpo da requisição carregado do arquivo 'itemRequestBodyEditado'
E que eu envie uma requisição GET para 'api/fiscal/item-filial' e armazene no grupo 'item' no subgrupo '' o valor do campo 'descricao'
E que eu envie uma requisição GET para 'api/fiscal/item-filial' e armazene no grupo 'item' no subgrupo '' o valor do campo 'id'
# Então envio uma requisição GET para 'api/fiscal/item-filial' comparando o arquivo 'itemRequestBodyEditado' com a resposta: grupo 'item' subgrupo '' e valor do campo 'descricao'
Então envio uma requisição GET para 'api/fiscal/item-filial' e comparo a resposta com o arquivo mokado 'itemRequestBodyEditado'

@BomCaminho @CRUD
Cenário: Item (Exclusão)
Dado que eu envie uma requisição Delete para 'api/fiscal/item-filial'
Então o status code da resposta deve ser '200'