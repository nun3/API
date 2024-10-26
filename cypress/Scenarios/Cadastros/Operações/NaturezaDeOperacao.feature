
# language: pt

Funcionalidade: Natureza de Operação

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Operações'
    E que cliquei no sub-menu 'Natureza de Operação' 

     @BomCaminho
 Cenário: Natureza de Operação NF-e Entrada com pagamento em Dinheiro
     Dado que cliquei no botão Novo no cabeçalho de filtro
     Quando clico na aba 'NF-e' na tela de Natureza de Operação
     E preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
     E preencho o campo 'Tipo de Operação' com o valor 'Compra - Entrada' e seleciono a opção 'Compra - Entrada'
     E seleciono no campo 'Tipo Rateio de Frete Gerencial' a opção 'Valor'
     E seleciono o checkbox 'Utiliza CIAP'
     E seleciono o checkbox 'Utiliza Pedido'
     E seleciono o checkbox 'Movimenta Exportação'
     E seleciono o checkbox 'Imprimir Vendedor'
     E preencho o campo 'Forma de Pagamento' com o valor 'Dinheiro' e seleciono a opção 'DINHEIRO'
     E seleciono o checkbox 'Altera Imposto da Nota'
     E preencho o campo 'Série' com o valor '123'
     E preencho o campo 'Modelo de Documento' com o valor '01' e seleciono a opção 'Nota Fiscal'
     E seleciono no campo 'Finalidade da NF-e' a opção 'NF-e Normal'
     E seleciono o checkbox 'Permite Referenciar Documentos Fiscais'
     E seleciono o checkbox 'Obriga Referenciar um Documento Fiscal'
     E preencho o campo 'Natureza da Operação' com o valor 'COMPRA DE LENHA' e seleciono a opção 'COMPRA DE LENHA'
     E seleciono o checkbox 'Obriga Safra'
     E seleciono o checkbox 'Obriga Romaneio de Origem'
     E seleciono o checkbox 'Clona Dados de Frete do Romaneio para NF'
     E seleciono o checkbox 'Valida Endereço do Romaneio'
     E seleciono o checkbox 'Imprime nas Observações a Pesagem e o Romaneio'
     E que clico no botão Salvar no cabeçalho do formulário
     Então aguardo o status 'Salvo com sucesso'
     E armazeno o valor do ID na tela de formulário

     @BomCaminho
 Cenário: Exclusão de Natureza de Operação
     Dado que clico no botão Filtrar no cabeçalho de filtro
     E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
     E clico no botão Filtrar na tela de Filtros
     Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
     Então aguardo o Dialogo de Confirmação de Exclusão
     E clico em 'Sim' no Dialogo de Confirmação de Exclusão
     E aguardo o status 'Registro removido com sucesso'

     @BomCaminho
 Cenário: Natureza de Operação CT-E - Entrada
     Dado que cliquei no botão Novo no cabeçalho de filtro
     Quando clico na aba 'CT-e' na tela de Natureza de Operação
     E preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
     E preencho o campo 'Tipo de Operação' com o valor 'CTe - Entrada' e seleciono a opção 'CTe - Entrada'
     E preencho o campo 'Tipo de Serviço' com o valor 'Normal' e seleciono a opção 'Normal'
     E seleciono no campo 'Situação' a opção 'A Pagar'
     E preencho o campo 'Unidade de Medida' com o valor 'Metro Cúbico' e seleciono a opção 'Metro Cúbico'
     E seleciono no campo 'Tipo de Ct-e' a opção 'CT-e Normal'
     E clico no botão 'Adicionar Todos' pertencente ao grupo 'Geral'
     E preencho o campo 'Série' com o valor '123'
     E preencho o campo 'Modelo de Documento' com o valor 'Conhecimento de Transporte Eletrônico – CT-e' e seleciono a opção 'Conhecimento de Transporte Eletrônico – CT-e'
     E seleciono o checkbox 'Alterar Imposto do CTe'
     E seleciono o checkbox 'Permite Referenciar Documentos Fiscais'
     E seleciono o checkbox 'Obriga Referenciar um Documento Fiscal'
     E preencho o campo 'Natureza da Operação' com o valor 'COMPRA DE LENHA' e seleciono a opção 'COMPRA DE LENHA'
     E clico no botão 'Adicionar Todos' pertencente ao grupo 'Financeiro'
     E que clico no botão Salvar no cabeçalho do formulário
     Então aguardo o status 'Salvo com sucesso'
     E armazeno o valor do ID na tela de formulário

     @BomCaminho
 Cenário: Exclusão de Natureza de Operação
     Dado que clico no botão Filtrar no cabeçalho de filtro
     E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
     E clico no botão Filtrar na tela de Filtros
     Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
     Então aguardo o Dialogo de Confirmação de Exclusão
     E clico em 'Sim' no Dialogo de Confirmação de Exclusão
     E aguardo o status 'Registro removido com sucesso'

     @BomCaminho
 Cenário: Inclusão de Lançamento Financeiro 'Outros Pagamentos'
     Dado que cliquei no botão Novo no cabeçalho de filtro
     Quando clico na aba 'Lançamento Financeiro' na tela de Natureza de Operação
     E preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
     E preencho o campo 'Tipo de Operação' com o valor 'Outros Pagamentos' e seleciono a opção 'Outros Pagamentos'
     E preencho o campo 'Forma de Pagamento' com o valor 'DINHEIRO' e seleciono a opção 'DINHEIRO'
     E que clico no botão Salvar no cabeçalho do formulário
     E aguardo o status 'Salvo com sucesso'
     E armazeno o valor do ID na tela de formulário

     @BomCaminho
 Cenário: Exclusão de Lançamento Financeiro 'Outros Pagamentos'
     Dado que clico no botão Filtrar no cabeçalho de filtro
     E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
     E clico no botão Filtrar na tela de Filtros
     Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
     Então aguardo o Dialogo de Confirmação de Exclusão
     E clico em 'Sim' no Dialogo de Confirmação de Exclusão
     E aguardo o status 'Registro removido com sucesso'

     @BomCaminho
 Cenário: Inclusão de Natureza de Operação Lançamento Financeiro 'Outros Recebimentos'
     Dado que cliquei no botão Novo no cabeçalho de filtro
     Quando clico na aba 'Lançamento Financeiro' na tela de Natureza de Operação
     E preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
     E preencho o campo 'Tipo de Operação' com o valor 'Outros Recebimentos' e seleciono a opção 'Outros Recebimentos'
     E preencho o campo 'Forma de Pagamento' com o valor 'DINHEIRO' e seleciono a opção 'DINHEIRO'
     E que clico no botão Salvar no cabeçalho do formulário
     E aguardo o status 'Salvo com sucesso'
     Então armazeno o valor do ID na tela de formulário

     @BomCaminho
 Cenário: Exclusão de Natureza de Operação Lançamento Financeiro 'Outros Recebimentos'
     Dado que clico no botão Filtrar no cabeçalho de filtro
     E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
     E clico no botão Filtrar na tela de Filtros
     Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
     Então aguardo o Dialogo de Confirmação de Exclusão
     E clico em 'Sim' no Dialogo de Confirmação de Exclusão
     E aguardo o status 'Registro removido com sucesso'

     @BomCaminho
 Cenário: Inclusão de Natureza de Operação Ajuste Local de Estoque
     Dado que cliquei no botão Novo no cabeçalho de filtro
     Quando clico na aba 'Ajuste Local Estoque' na tela de Natureza de Operação
     E preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
     E preencho o campo 'Local de Estoque Destino' com o valor 'ESTOQUE PADRÃO' e seleciono a opção 'ESTOQUE PADRÃO'
     E que clico no botão Salvar no cabeçalho do formulário
     E aguardo o status 'Salvo com sucesso'
     E armazeno o valor do ID na tela de formulário
    
     @BomCaminho
 Cenário: Exclusão de Natureza de Operação Ajuste Local de Estoque 
     Dado que clico no botão Filtrar no cabeçalho de filtro
     E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
     E clico no botão Filtrar na tela de Filtros
     Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
     Então aguardo o Dialogo de Confirmação de Exclusão
     E clico em 'Sim' no Dialogo de Confirmação de Exclusão
     E aguardo o status 'Registro removido com sucesso'

     @BomCaminho
 Cenário: Natureza de Operação CT-E - Saída
     Dado que cliquei no botão Novo no cabeçalho de filtro
     Quando clico na aba 'CT-e' na tela de Natureza de Operação
     E preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
     E preencho o campo 'Tipo de Operação' com o valor 'CTe - Saída' e seleciono a opção 'CTe - Saída'
     E preencho o campo 'Tipo de Serviço' com o valor 'Normal' e seleciono a opção 'Normal'
     E seleciono no campo 'Tipo de Ct-e' a opção 'CT-e Normal'
     E preencho o campo 'Unidade de Medida' com o valor 'Metro Cúbico' e seleciono a opção 'Metro Cúbico'
     E clico no botão 'Adicionar Todos' pertencente ao grupo 'Geral'
     E preencho o campo 'Série' com o valor '123'
     E preencho o campo 'Modelo de Documento' com o valor 'Conhecimento de Transporte Eletrônico – CT-e' e seleciono a opção 'Conhecimento de Transporte Eletrônico – CT-e'
     E seleciono o checkbox 'Alterar Imposto do CTe'
     E seleciono o checkbox 'Permite Referenciar Documentos Fiscais'
     E seleciono o checkbox 'Obriga Referenciar um Documento Fiscal'
     E preencho o campo 'Natureza da Operação' com o valor 'CT-E SAÍDA' e seleciono a opção 'CT-E SAÍDA'
     E clico no botão 'Adicionar Todos' pertencente ao grupo 'Financeiro'
     E que clico no botão Salvar no cabeçalho do formulário
     Então aguardo o status 'Salvo com sucesso'
     E armazeno o valor do ID na tela de formulário

     @BomCaminho
 Cenário: Exclusão de Natureza de Operação CT-E - Saída
     Dado que clico no botão Filtrar no cabeçalho de filtro
     E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
     E clico no botão Filtrar na tela de Filtros
     Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
     Então aguardo o Dialogo de Confirmação de Exclusão
     E clico em 'Sim' no Dialogo de Confirmação de Exclusão
     E aguardo o status 'Registro removido com sucesso'

     @BomCaminho
 Cenário: Natureza de Operação Pedido de Venda
     Dado que cliquei no botão Novo no cabeçalho de filtro
     Quando clico na aba 'Pedido' na tela de Natureza de Operação
     E preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
     E preencho o campo 'Tipo de Operação' com o valor 'Pedido de Venda' e seleciono a opção 'Pedido de Venda'
     E preencho o campo 'Natureza Operação para NF-e' com o valor 'VENDA DE MERCADORIAS' e seleciono a opção 'VENDA DE MERCADORIAS'
     E preencho o campo 'Natureza de Operação para Consignação NF-e' com o valor 'VENDA DE IMOBILIZADO' e seleciono a opção 'VENDA DE IMOBILIZADO'
     E preencho o campo 'Natureza Operação Simples Remessa NF-e' com o valor 'REMESSA DE MERCADORIA ENTREGA FUTURA' e seleciono a opção 'REMESSA DE MERCADORIA ENTREGA FUTURA'
     E clico no botão 'Adicionar Todos' pertencente ao grupo 'Financeiro'
     E que clico no botão Salvar no cabeçalho do formulário
     Então aguardo o status 'Salvo com sucesso'
     E armazeno o valor do ID na tela de formulário

     @BomCaminho
 Cenário: Exclusão de Natureza de Operação Pedido de Venda
     Dado que clico no botão Filtrar no cabeçalho de filtro
     E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
     E clico no botão Filtrar na tela de Filtros
     Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
     Então aguardo o Dialogo de Confirmação de Exclusão
     E clico em 'Sim' no Dialogo de Confirmação de Exclusão
     E aguardo o status 'Registro removido com sucesso'

     @BomCaminho
 Cenário: Natureza de Operação Pedido de Compra
     Dado que cliquei no botão Novo no cabeçalho de filtro
     Quando clico na aba 'Pedido' na tela de Natureza de Operação
     E preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
     E preencho o campo 'Tipo de Operação' com o valor 'Pedido de Compra' e seleciono a opção 'Pedido de Compra'
     E preencho o campo 'Natureza Operação para NF-e' com o valor 'COMPRA DE LENHA' e seleciono a opção 'COMPRA DE LENHA'
     E preencho o campo 'Natureza Operação Simples Remessa NF-e' com o valor 'REMESSA DE MERCADORIA ENTREGA FUTURA' e seleciono a opção 'REMESSA DE MERCADORIA ENTREGA FUTURA'
     E clico no botão 'Adicionar Todos' pertencente ao grupo 'Financeiro'
     E que clico no botão Salvar no cabeçalho do formulário
     Então aguardo o status 'Salvo com sucesso'
     E armazeno o valor do ID na tela de formulário

     @BomCaminho
 Cenário: Exclusão de Natureza de Operação Pedido de Compra
     Dado que clico no botão Filtrar no cabeçalho de filtro
     E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
     E clico no botão Filtrar na tela de Filtros
     Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
     Então aguardo o Dialogo de Confirmação de Exclusão
     E clico em 'Sim' no Dialogo de Confirmação de Exclusão
     E aguardo o status 'Registro removido com sucesso'

     @BomCaminho
 Cenário: Natureza de Operação com Pedido de Venda Futura
     Dado que cliquei no botão Novo no cabeçalho de filtro
     Quando clico na aba 'Pedido' na tela de Natureza de Operação
     E preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
     E preencho o campo 'Tipo de Operação' com o valor 'Pedido de Venda Futura' e seleciono a opção 'Pedido de Venda Futura'
     E preencho o campo 'Natureza Operação para NF-e' com o valor 'VENDA PARA ENTREGA FUTURA' e seleciono a opção 'VENDA PARA ENTREGA FUTURA'
     E preencho o campo 'Natureza de Operação para Consignação NF-e' com o valor 'REMESSA DE MERCADORIA ENTREGA FUTURA' e seleciono a opção 'REMESSA DE MERCADORIA ENTREGA FUTURA'
     E preencho o campo 'Natureza Operação Simples Remessa NF-e' com o valor 'TESTE N EXCLUIR' e seleciono a opção 'TESTE N EXCLUIR'
     E clico no botão 'Adicionar Todos' pertencente ao grupo 'Financeiro'
     E que clico no botão Salvar no cabeçalho do formulário
     Então aguardo o status 'Salvo com sucesso'
     E armazeno o valor do ID na tela de formulário

     @BomCaminho
 Cenário: Exclusão de Natureza de Operação com Pedido de Venda Futura
     Dado que clico no botão Filtrar no cabeçalho de filtro
     E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
     E clico no botão Filtrar na tela de Filtros
     Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
     Então aguardo o Dialogo de Confirmação de Exclusão
     E clico em 'Sim' no Dialogo de Confirmação de Exclusão
     E aguardo o status 'Registro removido com sucesso'

Cenário: Natureza de Operação NF-e Saída com pagamento em Dinheiro
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando clico na aba 'NF-e' na tela de Natureza de Operação
    E preencho o campo 'Descrição' com o valor '[GERAR=TEXTO]'
    E preencho o campo 'Tipo de Operação' com o valor 'Venda - Saída' e seleciono a opção 'Venda - Saída'
    E seleciono no campo 'Tipo Rateio de Frete Gerencial' a opção 'Valor'
    E seleciono o checkbox 'Utiliza CIAP'
    E seleciono o checkbox 'Utiliza Pedido'
    E seleciono o checkbox 'Movimenta Exportação'
    E seleciono o checkbox 'Imprimir Vendedor'
    E preencho o campo 'Forma de Pagamento' com o valor 'Dinheiro' e seleciono a opção 'DINHEIRO'
    E seleciono o checkbox 'Altera Imposto da Nota'
    E preencho o campo 'Série' com o valor '123'
    E preencho o campo 'Modelo de Documento' com o valor '01' e seleciono a opção 'Nota Fiscal'
    E seleciono no campo 'Finalidade da NF-e' a opção 'NF-e Normal'
    E seleciono o checkbox 'Permite Referenciar Documentos Fiscais'
    E seleciono o checkbox 'Obriga Referenciar um Documento Fiscal'
    E preencho o campo 'Natureza da Operação' com o valor 'COMPRA DE LENHA' e seleciono a opção 'COMPRA DE LENHA'
    E seleciono o checkbox 'Obriga Safra'
    E seleciono o checkbox 'Obriga Romaneio de Origem'
    E seleciono o checkbox 'Clona Dados de Frete do Romaneio para NF'
    E seleciono o checkbox 'Valida Endereço do Romaneio'
    E seleciono o checkbox 'Imprime nas Observações a Pesagem e o Romaneio'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

     @BomCaminho
 Cenário: Exclusão de Natureza de Operação NF-e Saída com pagamento em Dinheiro
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'