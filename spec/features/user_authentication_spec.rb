require 'rails_helper'

feature 'user authentication' do

  scenario 'can sign in if user is active' do
    user = User.create(email: 'johndoe@example.com', password: 'password', active: true)

    sign_in user

    expect(page).to have_content 'Sign out'
  end

  scenario "can't sign in if user is inactive" do
    user = User.create(email: 'johndoe@example.com', password: 'password', active: false)

    sign_in user

    expect(page).to have_content "Inactive user, can't login"
  end
end
