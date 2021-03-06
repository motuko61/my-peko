class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index 
    @posts = Post.all.order(created_at: :desc)
  end  
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else 
      render :new
    end  
  end
  
  def show
    @post = Post.find(params[:id])
  end 
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else 
      render :edit
    end    
  end

  def destroy
    @post = Post.find(params[:id])
    if current_user.id == @post.user_id
      @post.destroy
      redirect_to root_path
    end
  end  
  private 

  def post_params
    params.require(:post).permit(:name, :comment, :category_id, :price_id, :scene_id, :teach_id, :image).merge(user_id: current_user.id)
  end

end
