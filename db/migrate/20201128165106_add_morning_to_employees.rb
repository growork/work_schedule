class AddMorningToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :morning, :integer
  end
end
