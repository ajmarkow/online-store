class Review < ApplicationRecord
  has_one :product
  validates :content_body, length: { minimum: 50, maximum: 250 }
  validates :author, :content_body, :rating, presence: true
  validates :rating, inclusion: { in: 1..5 }
  scope :top3, ->{order('rating desc').limit(3)}
end
