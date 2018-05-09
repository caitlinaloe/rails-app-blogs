require "rails_helper"


describe 'User' do
  it 'should have a name' do
    user = User.new(name: 'Bob', email: 'bob@123.com', phone: 4)
    expect(user.save).to be true

    user.name = nil
    expect(user.save).to be false
  end

  it 'should have a unique email' do
    user = User.create(name: 'Bob', email: 'bob@123.com', phone: 4)
    copy_user = User.new(name: 'Bob', email: 'bob@123.com', phone: 4)
    expect(copy_user.save).to be false
    expect(copy_user.errors.full_messages).to include 'Email has already been taken'
  end

  it 'should have an @ symbol in email' do
    # This test will fail.  Maybe we should update the user model
  end

  it 'should have a phone number with 10 digits' do
    # This will fail Maybe we should fix the user model
  end

  it 'should have a phone number leass than 999999999' do
    # This will pass! Maybe we should fix the user model
    # user = User.new(name: 'Bob', email: 'bob@123.com', phone: -1)
    user1 = User.new(name: 'Bob', email: 'bob@123.com', phone: 999999999)
    user2 = User.new(name: 'Bob', email: 'bob@456.com', phone: 99999999999999999)
    user3 = User.new(name: 'Bob', email: 'bob@789.com', phone: 5)

    expect(user1.save).to be true
    expect(user2.save).to be false
    expect(user3.save).to be true
  end

  it 'should include name in greet' do
    user = User.create(name: 'Bob', email: 'bob@123.com', phone: 999999999)
    expect(user.greet).to eq "Hello, my name is Bob."
  end
end
