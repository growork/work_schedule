class AddGlobalSectionToLocalSection < ActiveRecord::Migration[6.0]
  def change
    add_reference :local_sections, :global_section, foreign_key: true
  end
end
