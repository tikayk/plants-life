class LikesController < ApplicationController

  def create
    @like = current_user.likes.create(post_id: params[:post_id])
    # @like = Like.new(user_id: current_user.id, post_id: params[:post_id])
    @like.save
    
  end

  def destroy
    @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id,)
    @like.destroy
    # @post = Post.find(post_id: params[:post_id])
  end

end
