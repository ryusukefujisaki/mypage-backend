class Article < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_one_attached :image

  validates :title, :content, presence: true
  validates :image, size: { less_than_or_equal_to: 4.megabytes }

  def image_url
    image.attached? ? url_for(image) : nil
  end
end
