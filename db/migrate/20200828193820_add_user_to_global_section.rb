class AddUserToGlobalSection < ActiveRecord::Migration[6.0]
  def change
    add_reference :global_sections, :user, index: true, foreign_key: true
  end
end
