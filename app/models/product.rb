class Product < ApplicationRecord
  belongs_to :category
  has_one_attached :image

  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :category, presence: true

  enum :display_type, { latest: 0, top: 1 }
end
