class UsersController < ApplicationController

  def update
  end

  def create
    @user = User.new(email: params[:user][:email],
    name: params[:user][:name], phone: params[:user][:phone])
    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def destroy
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
end
