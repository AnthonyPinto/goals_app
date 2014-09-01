require 'spec_helper'

feature "the signup process" do 

  it "has a new user page" do
    visit 'users/new'
    expect(page).to have_content('Sign Up')
    expect(page).to have_field('Username')
    expect(page).to have_field('Password')
  end
  
  feature "signing up a user" do
    it "shows username on the homepage after signup" do
      sign_up #("Dave")
      expect(page).to have_content("Dave")
    end
  end

end


feature "logging in" do 

  it "shows username on the homepage after login"

end


feature "logging out" do 

  it "begins with logged out state"

  it "doesn't show username on the homepage after logout"

end

