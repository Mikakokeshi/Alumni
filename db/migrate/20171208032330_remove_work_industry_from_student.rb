class RemoveWorkIndustryFromStudent < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :work_industry, :string
  end
end
