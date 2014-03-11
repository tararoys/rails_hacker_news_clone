class PostsController < ApplicationController
  def index
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end
end
