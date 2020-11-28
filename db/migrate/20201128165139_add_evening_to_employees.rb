class AddEveningToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :evening, :integer
  end
end
