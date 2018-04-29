class BlogsController < ApplicationController

  attr_accessor :grading

  def edit
  end

  def index
  end

  def new
  end

  def show
    @grading = blog.grading(params[:id])
  end
end
