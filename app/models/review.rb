class Review < ApplicationRecord
  has_one :product
  validates :content_body, length: { minimum: 50, maximum: 250 }
  validates :author, :content_body, :rating, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
