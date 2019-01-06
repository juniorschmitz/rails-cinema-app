# encoding: utf-8
# language:pt

@all_app
@login
Funcionalidade: Login e acesso a partes restritas do site
  Como administrador do site
  Gostaria que somente usuários que possuam cadastro possam acessar as funcionalidades restritas
  Para que o site possa ter confiabilidade no conteúdo disponibilizado

Contexto: Usuário está na home page
  Dado que tenho um usuário registrado
  Dado que estou na home page

@login
Cenário: Realizar login    
  Quando clicar no botão de login
  # E logar com o usuário potato@teste.com e senha 123456&
  E logar com meu usuário
  Então deve aparecer um botão para deslogar na home

@acessar_pagina_movies_usuario_logado
Cenário: Acessar a página de edição e cadastro de filmes com usuário logado
  Quando clicar no botão de login
  # E logar com o usuário potato@teste.com e senha 123456&
  E logar com meu usuário
  E acessar a página de edição de filmes diretamenta pela url
  Então deverá aparecer uma opção de cadastro de novo filme
