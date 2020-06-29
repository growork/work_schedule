class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.text :note
      t.string :time_interval

      t.timestamps
    end
  end
end
