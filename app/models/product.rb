class Product < ApplicationRecord
  before_save(:titleize_name)
  has_many :reviews, dependent: :destroy
  validates :country_of_origin, :cost, :name, presence: true
  private
  def titleize_name
    self.name = self.name.titleize()
  end
end
