class UsersController < ApplicationController

  def edit
  end

  def index
    user_1 = User.new('Bob')
    user_2 = User.new('Sally')
    @users = [user_1, user_2]
  end

  def new
  end

  def show
  end

end
