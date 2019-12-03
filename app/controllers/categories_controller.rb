class CategoriesController < ApplicationController

  def index
    
    # if params[:category_id]

    #   # Categoryのデータベースのテーブルから一致するidを取得
    #   @category = Category.find(params[:category_id])
       
    #   # category_idと紐づく投稿を取得
    #   @posts = @category.posts.order(created_at: :desc).all
    # else
    #   # 投稿すべてを取得
    #   @posts = Post.order(created_at: :desc).all
    # end
  end

end

