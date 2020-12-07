class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.text :employees_id
      t.string :note_time_interval
      t.string :note_left
      t.string :note_center
      t.string :note_right
      t.datetime :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
