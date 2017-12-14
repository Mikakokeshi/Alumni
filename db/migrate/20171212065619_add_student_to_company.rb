class AddStudentToCompany < ActiveRecord::Migration[5.1]
  def change
    add_reference :companies, :student, foreign_key: true
  end
end
