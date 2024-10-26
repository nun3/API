# language: pt

Funcionalidade: Cotação

@BomCaminho @CRUD
Cenário: Cotação (Cadastro)
Dado que eu envie uma requisição POST para a URL 'api/fiscal/cotacao' com o corpo da requisição carregado do arquivo 'cotacaoRequestBody'
Quando envio uma requisição GET para 'api/fiscal/cotacao' e armazene no grupo '' no subgrupo '' o valor do campo 'descricao'
Então envio uma requisição GET para 'api/fiscal/cotacao' comparando o arquivo 'cotacaoRequestBody' com a resposta: grupo '' subgrupo '' e valor do campo 'descricao'


@BomCaminho @CRUD
Cenário: Edição de Cotação Simples
Dado que eu envie uma requisição de edição PUT para a URL 'api/fiscal/cotacao' com o corpo da requisição carregado do arquivo 'cotacaoRequestBodyEditado'
E que eu envie uma requisição GET para 'api/fiscal/cotacao' e armazene no grupo '' no subgrupo '' o valor do campo 'descricao'
E que eu envie uma requisição GET para 'api/fiscal/cotacao' e armazene no grupo '' no subgrupo '' o valor do campo 'id'
Então envio uma requisição GET para 'api/fiscal/cotacao' comparando o arquivo 'cotacaoRequestBodyEditado' com a resposta: grupo '' subgrupo '' e valor do campo 'descricao'


@BomCaminho @CRUD
Cenário: Exclusão de Cotação Simples
Dado que eu envie uma requisição Delete para 'api/fiscal/cotacao'
Então o status code da resposta deve ser '200'