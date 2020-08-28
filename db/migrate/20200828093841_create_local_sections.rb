class CreateLocalSections < ActiveRecord::Migration[6.0]
  def change
    create_table :local_sections do |t|
      t.string :title
      t.references :gloabal_section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
