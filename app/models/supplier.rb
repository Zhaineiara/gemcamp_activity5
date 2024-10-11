class Supplier < ApplicationRecord
  has_one :products

  validates :name, presence: true
  validates :contact_info, presence: true
end
