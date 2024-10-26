# language: pt

Funcionalidade: Niveis de Grupo

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Itens'
    E que cliquei no sub-menu 'Níveis de Grupos'

@BomCaminho @CRUD
Cenário: Niveis de Grupo (Inclusão)
    Quando preencho o campo 'Nível 1' com o valor 'Teste'
    E preencho o campo 'Nível 2' com o valor 'Teste'
    E clico no botão 'Definir Níveis' no cabeçalho pertencente ao grupo 'Níveis'
    E preencho o campo 'Quantidade de Níveis' com o valor '5' na tela modal de 'Níveis'
    E que clico no botão 'Confirmar' no rodapé na tela modal de 'Níveis'
    E preencho o campo 'Nível 3' com o valor 'Teste'
    E preencho o campo 'Nível 4' com o valor 'Teste'
    E preencho o campo 'Nível 5' com o valor 'Teste'
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Niveis de Grupo (Edição)
    Quando preencho o campo 'Nível 1' com o valor 'Testing '
    E preencho o campo 'Nível 2' com o valor 'Teste2 '
    E preencho o campo 'Nível 3' com o valor 'Teste3'
    E preencho o campo 'Nível 4' com o valor 'Teste4 '
    E preencho o campo 'Nível 5' com o valor 'Teste5 '
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'