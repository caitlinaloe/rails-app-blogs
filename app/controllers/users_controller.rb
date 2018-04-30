class UsersController < ApplicationController
  def edit
    @user = User.new(params[:id])
  end

  def index
    user_1 = User.new('bob')
    user_2 = User.new('sally')
    user_3 = User.new('John')
    @users = [user_1, user_2, user_3]
  end

  def new
  end

  def show
    @user = User.new(params[:id])
  end
end
