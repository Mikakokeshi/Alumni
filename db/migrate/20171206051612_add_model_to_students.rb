class AddModelToStudents < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :model, foreign_key: true
  end
end
