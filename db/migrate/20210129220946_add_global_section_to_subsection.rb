class AddGlobalSectionToSubsection < ActiveRecord::Migration[6.0]
  def change
    add_reference :subsections, :global_section, null: false, foreign_key: true
  end
end
