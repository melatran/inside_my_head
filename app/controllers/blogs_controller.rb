class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
  end

  def create
    blog = Blog.create(blog_params)
    if blog.save
      redirect_to blogs_path
    else
      flash[:error] = blog.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  def blog_params
    params.permit(:title, :image, :body)
  end
end