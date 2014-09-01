require 'rails_helper'

feature "the signup process" do 

  it "has a new user page" do
    visit '/users/new'
    expect(page).to have_content('Sign Up')
    expect(page).to have_field('Username')
    expect(page).to have_field('Password')
  end
  
  feature "signing up a user" do
    it "shows username on the homepage after signup" do
      visit '/users/new'
      sign_up #("Dave")
      save_and_open_page
      expect(page).to have_content("Dave")
    end
  end

end


feature "logging in" do 

  it "shows username on the homepage after login" do
    visit '/users/new'
    sign_up
    sign_out
    sign_in # ("Dave")
    expect(page).to have_content("Dave")
  end
    

end


feature "logging out" do 

  it "begins with logged out state" do
    # TODO: better test
    visit 'session/new'
    expect(page).not_to have_content("Dave")
  end

  it "doesn't show username on the homepage after logout" do
    visit '/users/new'
    sign_up
    sign_out
    expect(page).not_to have_content("Dave")
  end

end

