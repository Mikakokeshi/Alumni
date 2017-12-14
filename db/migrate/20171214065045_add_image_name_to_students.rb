class AddImageNameToStudents < ActiveRecord::Migration[5.1]
  def change
        add_column :students, :image_name, :string
  end
end
