# language: pt

Funcionalidade: Pessoa

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Pessoas'
    E que cliquei no sub-menu 'Pessoa'

    @BomCaminho @CRUD
Cenário: Cadastro de Pessoa
    Dado que cliquei no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Nome' com o valor 'Testes Automatizados (Cadastro)' na tela de Pessoa
    E preencho o campo 'País' com o valor 'BRASIL' e seleciono a opção 'BRASIL'
    E preencho o campo 'CPF/CNPJ' com o valor 'CPFVALIDO' na tela de Pessoa
    E preencho o campo 'Data de Nascimento' com o valor '10102000' na tela de Pessoa
    E preencho o campo 'Atribuição' com o valor 'Cliente' e seleciono a opção 'Cliente'
    E clico na aba 'Endereços' tela de Complemento Principal
    E clico no botão 'Adicionar Endereço' no formulário de Pessoa
    E preencho o campo 'CEP' com o valor '85501150' na tela modal de 'Endereço'
    E preencho o campo 'Número' com o valor '777' na tela modal de 'Endereço'
    E preencho o campo 'Complemento' com o valor 'Casa da Fé' na tela modal de 'Endereço'
    E preencho o campo 'Telefone Principal' com o valor '46991826176' na tela modal de 'Endereço'
    E preencho o campo 'Telefone Comercial' com o valor '4632256996' na tela modal de 'Endereço'
    E preencho o campo 'Referência' com o valor 'Que cada residência seja um lugar onde a fé floresça e a esperança nunca falte' na tela modal de 'Endereço'
    E que clico no botão 'Salvar' no rodapé na tela modal de 'Endereço'
    E clico na aba 'Geral' tela de Complemento Principal
    E preencho o campo 'Fantasia' com o valor 'Cliente' na tela de Pessoa
    E preencho o campo 'Perfil Tributário' com o valor 'Consumidor Final' e seleciono a opção 'Consumidor Final'
    E seleciono no campo 'Indicador Inscrição Estadual' a opção 'Isento'
    E preencho o campo 'E-mail Principal' com o valor 'clienteteste@gmail.com'
    E preencho o campo 'E-mail Documento Eletrônico' com o valor 'clienteteste@gmail.com'
    E marco a opção 'Individual' no grupo de 'Limite de Crédito'
    E preencho o campo 'Valor' com o valor '5000000'
    E preencho o campo 'Data Próxima Revisão' com o valor '10/10/2030'
    E que clico no botão Salvar no cabeçalho do formulário
    E aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de formulário

   @BomCaminho @CRUD
Cenário: Edição de Pessoa
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E filtro pelo campo 'CPF/CNPJ/Identificação' com valor 'CONTEXTO[CPF]' na tela de Pessoas
    E clico no botão Filtrar na tela de Filtros
    E seleciono a linha com o valor 'CONTEXTO[CPF]' no grid de Pessoas
    Quando preencho o campo 'Nome' com o valor 'Pessoa Teste Inativo' na tela de Pessoa
    E clico na aba 'Geral' tela de Complemento Principal
    E preencho o campo 'Fantasia' com o valor 'Fantasia' na tela de Pessoa
    E clico na aba 'Endereços' tela de Complemento Principal
    E clico no botão 'Adicionar Endereço' no formulário de Pessoa
    E seleciono o campo 'Alternativo' a opção 'Tipo de endereço' na Tela de Pessoa
    E preencho o campo 'CEP' com o valor '85501150' na tela modal de 'Endereço'
    E preencho o campo 'Número' com o valor '777' na tela modal de 'Endereço'
    E preencho o campo 'Complemento' com o valor 'Casa da Fé' na tela modal de 'Endereço'
    E preencho o campo 'Telefone Principal' com o valor '46991826176' na tela modal de 'Endereço'
    E preencho o campo 'Telefone Comercial' com o valor '4632256996' na tela modal de 'Endereço'
    E preencho o campo 'Referência' com o valor 'Que cada residência seja um lugar onde a fé floresça e a esperança nunca falte' na tela modal de 'Endereço'
    E que clico no botão 'Salvar' no rodapé na tela modal de 'Endereço'
    E que clico no botão Salvar no cabeçalho do formulário
    Entao aguardo o status 'Salvo com sucesso'

    @BomCaminho @CRUD
Cenário: Inativar Pessoa
    Dado que cliquei no botão Filtrar no cabeçalho de filtro
    E filtro pelo campo 'CPF/CNPJ/Identificação' com valor 'CONTEXTO[CPF]' na tela de Pessoas
    E clico no botão Filtrar na tela de Filtros
    E seleciono a linha com o valor 'CONTEXTO[CPF]' no grid de Pessoas
    Quando clico no botão Menu Vertical no cabeçalho do formulário
    E clico na opção 'Inativar Cadastro' no Menu Vertical no cabeçalho do formulário
    E clico em 'Sim' no Dialogo de Confirmação de Inativação
    Entao aguardo o status Inativo