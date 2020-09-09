class AddGlobalSectionToEmployee < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :global_section, foreign_key: true
  end
end
