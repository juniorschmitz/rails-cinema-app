Dado(/^que tenho um usuário registrado$/) do
  random = Random.new
  @user = {
    :email => 'potato_' + random.rand(123456).to_s + '@potato.com',
    :password => '123456&'
  }
  visit new_user_registration_path
  fill_in('user_email', with: @user[:email])
  fill_in('user_password', with: @user[:password])
  fill_in('user_password_confirmation', with: @user[:password])
  page.find(:css, '.btn-registration').click
  sleep 1
  page.find(:css, '.btn-logout').click
end

E(/^clicar no botão de login$/) do
  page.find(:css, '.btn-login').click
end

E(/^logar com o usuário (.+) e senha (.+)$/) do |email, password|
  fill_in('user_email', with: email)
  fill_in('user_password', with: password)
  page.find(:css, '.btn-submit').click
end

E(/^logar com meu usuário$/) do
  fill_in('user_email', with: @user[:email])
  fill_in('user_password', with: @user[:password])
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

