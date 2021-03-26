class Review < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :content_body, presence: true
  validates :rating, presence: true
  validates_length_of :content_body, in: 50...251
  validates_numericality_of :rating, less_than_or_equal_to: 5
  validates_numericality_of :rating, greater_than_or_equal_to: 1
end
