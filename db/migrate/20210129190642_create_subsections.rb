class CreateSubsections < ActiveRecord::Migration[6.0]
  def change
    create_table :subsections do |t|
      t.string :name

      t.timestamps
    end
  end
end
