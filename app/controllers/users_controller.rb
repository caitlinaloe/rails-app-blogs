class UsersController < ApplicationController
  before_action :set_user, only: [:update, :destroy, :edit, :show]


  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def edit
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  private def user_params
    params.require(:user).permit(:name, :email, :phone)
  end

  private def set_user
    @user = User.find(params[:id])
  end
end
