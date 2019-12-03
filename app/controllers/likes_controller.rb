class LikesController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @like = current_user.likes.create(post_id: params[:post_id])
    @like.save
    redirect_to post_path(@post.id)
    # respond_to do |format|
    #   format.html
    #   format.json { render json: @like }
    # end
  end

  def destroy
    # binding.pry
    @post = Post.find(params[:post_id])
    @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id,)
    @like.destroy
    redirect_to post_path(@post.id)
    # respond_to do |format|
    #   format.html
    #   format.json { render json: @like }
    # end
  end

end
