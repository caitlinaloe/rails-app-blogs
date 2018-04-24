class UsersController < ApplicationController
  def edit
  end

  def index
    user_1 = User.new('bob')
    user_2 = User.new('sally')
    @users = [user_1, user_2]
  end
end