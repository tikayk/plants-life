class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @category = Category.new
  end
  
  def create
    Post.create(post_params)
    # redirect_to root_path
   
  end

  def show
    @like = Like.new
  end
  
  def edit
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
  
  private
  
  def post_params
    params.require(:post).permit(:image, :text, :category_id).merge(user_id: current_user.id)
  end
  
  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
