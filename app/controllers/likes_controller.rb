class LikesController < ApplicationController

  def create
    @like = Like.new(user_id: current_user.id, post_id: params[:post_id])
    @like.save
    @like_count = Like.where(post_id: params[:post_id]).count
    # redirect_to("/posts/#{params[:post_id]}")
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
    # binding.pry
    @like.destroy
    @like_count = Like.where(post_id: params[:post_id]).count
    # redirect_to("/posts/#{params[:post_id]}")
  end

end
