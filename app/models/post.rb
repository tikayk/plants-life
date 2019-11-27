class Post < ApplicationRecord
  validates :text, :image, presence: true
  belongs_to :user
  has_many :likes

  mount_uploader :image, ImageUploader

end
