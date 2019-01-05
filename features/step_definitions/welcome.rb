Dado(/^que estou na home page$/) do
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
