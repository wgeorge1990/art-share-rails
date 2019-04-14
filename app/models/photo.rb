class Photo < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :favorites
  has_many :comments
end
