class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'favorite_id'
  has_many :user_likes, through: :reverses_of_favorites, source: :user
end
