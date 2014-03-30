class WelcomeController < ApplicationController
  def index
  	@posts = Post.limit(3)
  end
  
  def show
  	@post = Post.find(params[:id])
  end
end
