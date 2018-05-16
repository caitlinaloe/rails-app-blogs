require "rails_helper"

describe 'user sign up' do
  it 'a user can signup' do
    visit '/users/new'
    expect(page).to have_content "Name:"

    fill_in 'user_name', with: 'Bob'
    fill_in 'user_email', with: 'bob@123.com'
    fill_in 'user_phone', with: '10'

    click_button 'Create User'

    expect(page).to have_content 'Bob'
    expect(page).to have_content 'bob@123.com'
  end
end

describe 'add a comment' do
  it 'shoould add a comment' do
    user = User.create(name: 'Sally', email: 'sally@123.com', phone: 4)

    visit '/comments/new'

    fill_in 'comment_content', with: 'A comment!!!!'
    click_button 'Create Comment'

    expect(page).to have_content 'Comment was successfully created.'
    expect(page).to have_content user.name
    expect(page).to have_content 'A comment!!!!'
  end
end
