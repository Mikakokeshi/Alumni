class AddCompanyToStudent < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :company, foreign_key: true
  end
end
