class AddOccupationToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :occupation, :string
  end
end
