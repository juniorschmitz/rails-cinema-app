# encoding: utf-8
# language:pt

@all_app
@welcome_page
Funcionalidade: Home page
  Como usuário do site
  Gostaria que existissem funcionalidades na home page
  Para eu poder navegar no site

  Contexto: Usuário está na home page
    Dado que estou na home page

  @saudacao_home
  Cenário: Saudação na página inicial
    Então deverá existir uma mensagem de saudação

  @header_home
  Cenário: Header na página inicial
    Então deverá existir um header

  @footer
  Cenário: Footer na página inicial
    Então deverá existir um footer

  @botao_login_home
  Cenário: Opção de login na página inicial
    Então deverá existir um botão de login