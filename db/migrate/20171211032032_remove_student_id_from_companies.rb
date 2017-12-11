class RemoveStudentIdFromCompanies < ActiveRecord::Migration[5.1]
  def change
    remove_column :companies, :student_id, :reference
  end
end
