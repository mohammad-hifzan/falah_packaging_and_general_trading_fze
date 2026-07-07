class Setting < ApplicationRecord
  validates :company_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
