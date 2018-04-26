class UsersController < ApplicationController

  def edit
    @var_1 = User.new(params[:id])
  end

  def index
    user_1 = User.new('bob')
    user_2 = User.new('sally')
    user_3 = User.new("john")
    @users = [user_1, user_2, user_3]
  end

  def new
  end

  def show
    @user = User.new(params[:id])
  end

  def show_saenz
    @user = User.new("Ana")
  end
end
