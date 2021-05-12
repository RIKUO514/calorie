class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(posts_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(posts_params)
  end

  private

  def posts_params
    params.require(:post).permit(:name, :image, :text)
  end

end
