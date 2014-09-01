def sign_in(username='Dave')
  visit '/session/new'
  fill_in 'Username', with: username
  fill_in 'Password', with: 'testing'
  click_button 'Submit'
end