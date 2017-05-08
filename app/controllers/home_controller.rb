class HomeController < ApplicationController
  
  def index
    @posts = Post.all.reverse
  end
  
  def write
    post = Post.new
    post.name = Faker::Name.name
    post.content = params[:content]
    post.save
  end
  
  def update
    @one_post = Post.find(params[:p_id])
  end 
  
  def update_post
    @one_post = Post.find(params[:p_id])
    @one_post.content = params[:content]
    @one_post.save
    redirect_to '/'
  end
  
  def destroy
    one_post = Post.find(params[:p_id])
    one_post.destroy
    redirect_to '/'
  end
  
end