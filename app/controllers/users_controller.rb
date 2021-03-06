class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(created_at: 'desc')  #降順で表示
    # @like = Like.find_by(user_id: current_user.id, post_id: post.id)
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image)
  end
end
