require "rails_helper"

describe 'user sign up' do
  it 'a user can add a comment' do
    user = User.create(name: 'Sally', email: 'sally@123.com', phone: 4)
    visit '/comments'
    expect(page).to have_content "Comments Index!!"

    click_link 'New Comment'
    expect(page).to have_content "New Comment"

    fill_in 'comment_content', with: 'This is a comment.'

    click_button 'Create Comment'

    expect(page).to have_content 'This is a comment.'
    expect(page).to have_content 'Comment was successfully created.'
    expect(page).to have_content user.name

  end

end
