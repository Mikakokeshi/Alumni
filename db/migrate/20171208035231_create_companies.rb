class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :industry
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
