class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :service_number
      t.references :local_section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
