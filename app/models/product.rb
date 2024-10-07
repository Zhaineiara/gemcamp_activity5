class Product < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :discount, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }, allow_nil: true
  validates :available, inclusion: { in: [true, false] }
  validates :released_at, presence: true, allow_nil: true
  validates :expiry_date, presence: true, comparison: { greater_than: :released_at }, allow_nil: true
end