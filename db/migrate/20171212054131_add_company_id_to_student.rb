class AddCompanyIdToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :company_id, :reference
  end
end
