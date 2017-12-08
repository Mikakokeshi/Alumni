class Student < ApplicationRecord

  validates :name, presence: true
  validates :nationality, presence: true
  validates :gender, presence: true
  validates :enlollment_date, presence: true
  validates :work_place, presence: true
  validates :work_industry, presence: true

end
