class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  	@posts_show = Post.limit(3)
  end
end
