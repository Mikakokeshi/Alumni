class Student < ApplicationRecord
  belongs_to :model


  validates :name, presence: true
  validates :nationality, presence: true
  validates :gender, presence: true
  validates :enlollment_date, presence: true
  validates :work_place, presence: true
  validates :occupation , presence: true

end
