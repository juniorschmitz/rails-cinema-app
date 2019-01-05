E(/^clicar no botão de login$/) do
  page.find(:css, '.btn-login').click
end

E(/^logar com o usuário (.+) e senha (.+)$/) do |email, password|
  # page.find(:css, "#user_email").set email
  fill_in('user_email', with: email)
  # page.find(:css, "#user_password").set password
  fill_in('user_password', with: password)
  page.find(:css, '.btn-submit').click
end

Então(/^deve aparecer um botão para deslogar na home$/) do
  expect(page).to have_selector '.btn-logout'
end

Quando(/^acessar a página de edição de filmes diretamenta pela url$/) do
  visit movies_path
end

Então(/^deverá aparecer a tela de login de usuário$/) do
  expect(page).to have_selector '.form-signin'
  expect(page).to have_selector '.btn-login'
end

Então(/^deverá aparecer uma opção de cadastro de novo filme$/) do
  expect(page).to have_content 'Novo Filme'
end
