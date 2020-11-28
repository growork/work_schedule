class AddWorkOvertimeToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :work_overtime, :boolean
  end
end
