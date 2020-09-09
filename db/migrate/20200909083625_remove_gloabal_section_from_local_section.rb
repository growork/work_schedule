class RemoveGloabalSectionFromLocalSection < ActiveRecord::Migration[6.0]
  def change
    remove_reference :local_sections, :gloabal_section, null: false, foreign_key: true
  end
end
