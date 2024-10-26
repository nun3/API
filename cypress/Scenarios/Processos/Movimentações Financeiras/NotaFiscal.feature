# language: pt

Funcionalidade: Nota Fiscal

Contexto: Acessar Módulo 
  Dado que cliquei no menu Mostrar e Ocultar
  E que cliquei no menu principal 'Processos'
  E que cliquei no menu 'Movimentações Fiscais'
  E que cliquei no sub-menu 'Nota Fiscal'
 
@BomCaminho
Cenário: Nota Fiscal com acerto em Dinheiro (Inclusão)
  Dado que cliquei no botão Novo no cabeçalho de filtro
  Quando preencho o campo 'Natureza de Operação' com o valor 'Venda de Mercadoria' e seleciono a opção 'VENDA DE MERCADORIA' 
  E preencho o campo 'Pessoa' com o valor 'Pessoa Teste 29' e seleciono a opção 'Pessoa Teste 29'
  E clico no botão 'Adicionar' no cabeçalho pertencente ao grupo 'Item'
  E preencho o campo 'Item' com o valor 'REVITA 20LT' e seleciono a opção 'REVITA 20LT' na tela modal de 'Item'
  E aguardo a requisição 'POST' na url 'https://v.clarity.ms/collect'
  E preencho o campo 'Quantidade Unitária' com o valor '1,000' na tela modal de 'Item'
  E direciono o foco para o campo 'Valor Unitário' na tela modal de 'Item'
  E preencho o campo 'Lote' com o valor '49267/23' e seleciono a opção '49267/23' na tela modal de 'Lote'
  E que clico no botão 'Salvar' no rodapé na tela modal de 'Lote'
  E que clico no botão 'Fechar' no rodapé na tela modal de 'Lotes'
  E preencho o campo 'Valor Unitário' com o valor '1,0000' na tela modal de 'Item'
  E que clico no botão 'Adicionar' no rodapé na tela modal de 'Item'
  E que clico no botão 'Cancelar' no rodapé na tela modal de 'Item'
  E seleciono no campo 'Tipo do Frete' a opção 'Transporte Próprio por conta do Remetente'
  E que clico no botão Salvar no cabeçalho do formulário
  E que clico no texto 'Dinheiro' na tela modal de 'Acerto Financeiro'
  E clico no botão 'Salvar' no cabeçalho pertencente ao grupo 'Dinheiro'
  E que clico no botão 'Concluir' no cabeçalho na tela modal de 'Acerto Financeiro'
  E que clico no botão Salvar no cabeçalho do formulário
  Então que clico no botão 'Fechar' no rodapé na tela modal de 'Salvo com sucesso'
  E que clico no botão 'Cancelar' no rodapé na tela modal de 'Transmissão Nota Fiscal Eletrônica'

@BomCaminho
  Cenário: Nota Fiscal Entrada - Com acerto em Dinheiro
  Dado que cliquei no botão Novo no cabeçalho de filtro
  Quando preencho o campo 'Natureza de Operação' com o valor 'COMPRA DE MATERIAL USO E CONSUMO - NFE' e seleciono a opção 'COMPRA DE MATERIAL USO E CONSUMO - NFE'
  E preencho o campo 'Chave de Acesso' com o valor '[GERAR=48NUMERO]'
  E preencho o campo 'Pessoa' com o valor 'Pessoa Teste 29' e seleciono a opção 'Pessoa Teste 29'
  E preencho o campo 'Safra' com o valor 'Safra' e seleciono a opção 'Safra Teste'
  E clico no botão 'Adicionar' no cabeçalho pertencente ao grupo 'Item'
  E preencho o campo 'Item' com o valor 'RESIST 10KG' e seleciono a opção 'RESIST 10KG' na tela modal de 'Item' 
  E aguardo a requisição 'POST' na url 'https://v.clarity.ms/collect'
  E preencho o campo 'Quantidade Unitária' com o valor '7,000' na tela modal de 'Item'
  E preencho o campo 'Valor Unitário' com o valor '3,000' na tela modal de 'Item'
  E que clico no botão 'Adicionar' no rodapé na tela modal de 'Item'
  E que clico no botão 'Cancelar' no rodapé na tela modal de 'Item'
  E seleciono no campo 'Tipo do Frete' a opção 'Contratação do Frete por conta de Terceiros'
  E clico no botão 'Adicionar' no cabeçalho pertencente ao grupo 'Acerto Financeiro'
  E que clico no texto 'Dinheiro' na tela modal de 'Acerto Financeiro'
  E preencho o campo 'Complemento' com o valor 'Testes' na tela modal de 'Acerto Financeiro'
  E clico no botão 'Salvar' no cabeçalho pertencente ao grupo 'Dinheiro'
  E que clico no botão 'Concluir' no cabeçalho na tela modal de 'Acerto Financeiro'
  E que clico no botão Salvar no cabeçalho do formulário
  E que clico no botão 'Fechar' no rodapé na tela modal de 'Salvo com sucesso'
  Então armazeno o valor do ID na tela de formulário

   @BomCaminho
Cenário: Nota Fiscal Entrada - Com acerto em Duplicata
  Dado que cliquei no botão Novo no cabeçalho de filtro
  Quando preencho o campo 'Natureza de Operação' com o valor 'COMPRA DE MATERIAL USO E CONSUMO - NFE' e seleciono a opção 'COMPRA DE MATERIAL USO E CONSUMO - NFE'
  E preencho o campo 'Chave de Acesso' com o valor '[GERAR=48NUMERO]'
  E preencho o campo 'Pessoa' com o valor 'Pessoa Teste 29' e seleciono a opção 'Pessoa Teste 29'
  E preencho o campo 'Safra' com o valor 'Safra Teste' e seleciono a opção 'Safra Teste'
  E clico no botão 'Adicionar' no cabeçalho pertencente ao grupo 'Item'
  E preencho o campo 'Item' com o valor 'RESIST 10KG' e seleciono a opção 'RESIST 10KG' na tela modal de 'Item'
  E aguardo a requisição 'POST' na url 'https://v.clarity.ms/collect'
  E preencho o campo 'Quantidade Unitária' com o valor '7,000' na tela modal de 'Item'
  E preencho o campo 'Valor Unitário' com o valor '5,000' na tela modal de 'Item'
  E que clico no botão 'Adicionar' no rodapé na tela modal de 'Item'
  E que clico no botão 'Cancelar' no rodapé na tela modal de 'Item'
  E seleciono no campo 'Tipo do Frete' a opção 'Contratação do Frete por conta de Terceiros'
  E clico no botão 'Adicionar' no cabeçalho pertencente ao grupo 'Acerto Financeiro'
  E que clico no texto 'Duplicata' na tela modal de 'Acerto Financeiro'
  E preencho o campo 'Forma Parcelamento' com o valor '30 DIAS' e seleciono a opção '30 DIAS' na tela modal de 'Acerto Financeiro'
  E preencho o campo 'Histórico Complementar' com o valor 'Testes' na tela modal de 'Acerto Financeiro'
  E clico no botão 'Gerar' na tela modal de 'Acerto Financeiro'
  E clico no botão 'Salvar' no cabeçalho pertencente ao grupo 'Duplicata'
  E que clico no botão 'Concluir' no cabeçalho na tela modal de 'Acerto Financeiro'
  E que clico no botão Salvar no cabeçalho do formulário
  Então aguardo o status 'Salvo com sucesso'
  Então armazeno o valor do ID na tela de formulário

  @BomCaminho
Cenário: Nota Fiscal Saída - Com duplicata 30/60 (Inclusão)
  Dado que cliquei no botão Novo no cabeçalho de filtro
  Quando preencho o campo 'Natureza de Operação' com o valor 'Venda de Mercadoria' e seleciono a opção 'VENDA DE MERCADORIA'
  E preencho o campo 'Pessoa' com o valor 'Pessoa Teste 29' e seleciono a opção 'Pessoa Teste 29'
  E preencho o campo 'Safra' com o valor 'Safra Teste' e seleciono a opção 'Safra Teste'
  E clico no botão 'Adicionar' no cabeçalho pertencente ao grupo 'Item'
  E preencho o campo 'Item' com o valor 'RESIST 10KG' e seleciono a opção 'RESIST 10KG' na tela modal de 'Item'
  E aguardo a requisição 'POST' na url 'https://v.clarity.ms/collect'
  E preencho o campo 'Embalagem' com o valor 'KG' e seleciono a opção 'KG/SC 50KG' na tela modal de 'Item' 
  E preencho o campo 'Quantidade Embalagem' com o valor '4,000' na tela modal de 'Item'
  E direciono o foco para o campo 'Valor Embalagem' na tela modal de 'Item'
  E preencho o campo 'Lote' com o valor '48765/23' e seleciono a opção '48765/23' na tela modal de 'Lote'
  E que clico no botão 'Salvar' no rodapé na tela modal de 'Lote'
  E que clico no botão 'Fechar' no rodapé na tela modal de 'Lotes'
  E preencho o campo 'Valor Embalagem' com o valor '2,00' na tela modal de 'Item'
  E que clico no botão 'Adicionar' no rodapé na tela modal de 'Item'
  E que clico no botão 'Cancelar' no rodapé na tela modal de 'Item'
  E seleciono no campo 'Tipo do Frete' a opção 'Contratação do Frete por conta de Terceiros'
  E clico no botão 'Adicionar' no cabeçalho pertencente ao grupo 'Acerto Financeiro'
  E que clico no texto 'Duplicata' na tela modal de 'Acerto Financeiro'
  E preencho o campo 'Forma Parcelamento' com o valor '30/60' e seleciono a opção '30/60' na tela modal de 'Acerto Financeiro'
  E preencho o campo 'Histórico Complementar' com o valor 'TesteInc' na tela modal de 'Acerto Financeiro'
  E clico no botão 'Gerar' na tela modal de 'Acerto Financeiro'
  E clico no botão 'Salvar' na tela modal de 'Acerto Financeiro' 
  E que clico no botão 'Concluir' no cabeçalho na tela modal de 'Acerto Financeiro'
  E que clico no botão Salvar no cabeçalho do formulário
  Então que clico no botão 'Fechar' no rodapé na tela modal de 'Salvo com sucesso'
  E que clico no botão 'Cancelar' no rodapé na tela modal de 'Transmissão Nota Fiscal Eletrônica'