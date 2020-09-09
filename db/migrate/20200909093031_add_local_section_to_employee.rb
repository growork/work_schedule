class AddLocalSectionToEmployee < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :local_section, foreign_key: true
  end
end
