require "rails_helper"


describe 'User' do
  it 'should have a name' do
    user = User.new(name: 'bob', email: 'bob@123.com', phone: 4)
    expect(user.save).to be true

    user.name = nil
    expect(user.save).to be false
  end

  it 'should have a unique email' do
    user1 = User.create(name: 'bob', email: 'bob@123.com', phone: 4)
    user2 = User.new(name: 'sally', email: 'bob@123.com', phone: 5)
    expect(user2.save).to be false
    expect(user2.errors.full_messages).to include 'Email has already been taken'
  end

  it 'should have a phone number less than 999999999' do
    user1 = User.new(name: 'bob', email: 'bob@123.com', phone: -10)
    user2 = User.new(name: 'sally', email: 'sally@123.com', phone: 999999999)
    user3 = User.new(name: 'joe', email: 'joe@123.com', phone: 1000000000)
    user4 = User.new(name: 'mary', email: 'mary@123.com', phone: 5)
    expect(user1.save).to be true
    expect(user2.save).to be true
    expect(user3.save).to be false
    expect(user4.save).to be true
  end

  it 'should include name in greet' do
    user = User.new(name: 'bob', email: 'bob@123.com', phone: 4)
    expect(user.greet).to eq "Hello, my name is bob."
  end

end
