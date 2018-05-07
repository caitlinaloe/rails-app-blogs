class BlogsController < ApplicationController
  before_action :set_blog, only: [:update, :destroy, :edit, :show]

  attr_accessor :grading

  def update
    if @blog.update(user_params)
      redirect_to user_path(@blog)
    else
      render 'edit'
    end
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blog_path(@blog)
    else
      render 'new'
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path
  end

  def edit
  end

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def show
    @grading = Blog.new().grading(params[:id])
    @content = @blog.content
  end

  private def blog_params
    params.require(:title).permit(:content)
  end

  private def set_blog
    @blog = Blog.find(params[:id])
  end


end
