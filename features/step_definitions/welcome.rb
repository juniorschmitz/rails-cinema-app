Quando(/^Eu for para a home page$/) do
  visit root_path
end

Então(/^deverá existir uma mensagem de saudação$/) do
  expect(page).to have_content 'Hello Mate!'
end

Então(/^deverá existir um header$/) do
  expect(page).to have_selector 'header'
end

Então(/^deverá existir um footer$/) do
  expect(page).to have_selector 'footer'
end

Então(/^deverá existir um botão de login$/) do
  expect(page).to have_selector '.btn-login'
end

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
