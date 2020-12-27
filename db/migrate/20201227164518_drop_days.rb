class DropDays < ActiveRecord::Migration[6.0]
  def change
    drop_table :days
  end
end
