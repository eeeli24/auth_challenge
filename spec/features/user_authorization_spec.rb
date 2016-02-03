require 'rails_helper'

feature 'user authorization' do
  scenario 'signed in user can view secret page' do
    user = User.create(email: 'johndoe@example.com', password: 'password', active: true)
    sign_in(user)
    click_on 'Secret page'

    expect(page).to have_content 'This is a secret page'
  end

  scenario "can't view secret page without signing in" do
    visit root_path

    click_on 'Secret page'

    expect(page).to have_content 'Must be signed in to access secret page'
  end
end
