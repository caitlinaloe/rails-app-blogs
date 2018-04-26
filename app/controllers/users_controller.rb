class UsersController < ApplicationController

  attr_accessor :users

  def edit
    @user = User.new(params[:id])
  end

  def index
    user_1 = User.new('Bob')
    user_2 = User.new('Sally')
    @users = [user_1, user_2]
  end

  def new
  end

  def show
    @user = User.new(params[:id])
  end

end
