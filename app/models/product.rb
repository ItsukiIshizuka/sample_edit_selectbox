class Product < ApplicationRecord
  validates :category_id, presence: true, numericality: { greater_than_or_equal_to: 5 }
  belongs_to :category
end
