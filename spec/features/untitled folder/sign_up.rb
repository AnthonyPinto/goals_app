def sign_up(username='Dave')
  visit 'users/new'
  fill_in 'Username' with: username
  fill_in 'Password' with: 'testing'
  click_button 'Submit'
end