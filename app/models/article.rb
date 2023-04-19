class Article < ApplicationRecord
  has_one_attached :image

  validates :title, :content, presence: true
  validates :image, size: { less_than_or_equal_to: 4.megabytes }
end
