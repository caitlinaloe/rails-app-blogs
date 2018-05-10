require "rails_helper"

describe 'user sign up' do
  it 'a user can sign up' do
    visit '/users/new'
    expect(page).to have_content "Name:"

    fill_in 'user_name', with: 'Bob'
    fill_in 'user_email', with: 'bob2@123.com'
    fill_in 'user_phone', with: 5

    click_button 'Create User'

    expect(page).to have_content 'Bob'
    expect(page).to have_content 'bob2@123.com'

  end

end
