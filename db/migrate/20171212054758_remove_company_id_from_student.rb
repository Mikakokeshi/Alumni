class RemoveCompanyIdFromStudent < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :company_id, :reference
  end
end
