class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true
  validates :country_of_origin, presence: true

  before_save(:titleize_recipe, presence: name, uniqueness: true)

  private

  def titleize_recipe
    self.name = self.name.titleize
  end
end
