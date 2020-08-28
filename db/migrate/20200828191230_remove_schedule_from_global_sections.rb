class RemoveScheduleFromGlobalSections < ActiveRecord::Migration[6.0]
  def change
    remove_reference :global_sections, :schedule, null: false, foreign_key: true
  end
end
