class Post < ApplicationRecord
  validates :text, :image, presence: true

  belongs_to :user
  has_many :likes, dependent: :destroy  #postが消えたらlikeも消える
  belongs_to :category, dependent: :destroy

  mount_uploader :image, ImageUploader
    

end
