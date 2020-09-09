class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.integer :hours
      t.string :time_interval
      t.datetime :date
      t.string :type
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
