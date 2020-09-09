class RemoveLocalSectionFromEmployee < ActiveRecord::Migration[6.0]
  def change
    remove_reference :employees, :local_section, null: false, foreign_key: true
  end
end
