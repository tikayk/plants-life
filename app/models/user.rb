class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :likes
  
  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end

  mount_uploader :image, ImageUploader
end
