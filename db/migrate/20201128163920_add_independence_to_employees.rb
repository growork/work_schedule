class AddIndependenceToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :independence, :boolean
  end
end
