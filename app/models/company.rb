class Company < ApplicationRecord
  belongs_to :student

  validates :name,presence:true
  validates :gender,presence:true
  validates :nationality,presence:true
  validates :work_place,presence:true
  validates :enlollment_date,presence:true
  validates :occupation,presence:true
end
