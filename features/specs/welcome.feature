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

  @acessar_pagina_movies_usuario_deslogado
  Cenário: Acessar a página de edição e cadastro de filmes com usuário deslogado
    Quando acessar a página de edição de filmes diretamenta pela url
    Então deverá aparecer a tela de login de usuário