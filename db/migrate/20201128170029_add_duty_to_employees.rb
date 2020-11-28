class AddDutyToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :duty, :integer
  end
end
