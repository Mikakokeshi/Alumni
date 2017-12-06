class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :nationality
      t.string :gender
      t.string :enlollment_date
      t.string :work_place
      t.string :work_industry

      t.timestamps
    end
  end
end
