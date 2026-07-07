class Category < ApplicationRecord
  has_many :products

  validates :name, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true
end
