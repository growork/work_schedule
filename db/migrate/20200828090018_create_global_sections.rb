class CreateGlobalSections < ActiveRecord::Migration[6.0]
  def change
    create_table :global_sections do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
