class Company < ApplicationRecord


  validates :company_name, presence: true
  validates :industry, presence: true


end
