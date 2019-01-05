# encoding: utf-8
# language:pt

@welcome_page
Funcionalidade: Home page
  Como usuário do site
  Gostaria que existissem funcionalidades na home page
  Para eu poder navegar no site

  @saudacao_home
  Cenário: Saudação na página inicial
    Quando Eu for para a home page
    Então deverá existir uma mensagem de saudação

  @header_home
  Cenário: Header na página inicial
    Quando Eu for para a home page
    Então deverá existir um header

  @footer
  Cenário: Footer na página inicial
    Quando Eu for para a home page
    Então deverá existir um footer

  @botao_login_home
  Cenário: Opção de login na página inicial
    Quando Eu for para a home page
    Então deverá existir um botão de login

  @login
  Cenário: Realizar login
    Quando Eu for para a home page
    E clicar no botão de login
    E logar com o usuário potato@teste.com e senha 123456&
    Então deve aparecer um botão para deslogar na home