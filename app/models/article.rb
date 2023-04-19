class Article < ApplicationRecord
  has_one_attached :image

  validates :title, :content, presence: true
end
