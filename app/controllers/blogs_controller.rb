class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    redirect_to dear_no_one_path
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

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)

    redirect_to "/blogs/#{blog.id}"
  end

  def destroy
    blog = Blog.find(params[:id])
    Blog.destroy(params[:id])
    flash[:notice] = "You have removed #{blog.title}"
    redirect_to blogs_path
  end

  private

  def blog_params
    params.permit(:title, :image, :body)
  end
end