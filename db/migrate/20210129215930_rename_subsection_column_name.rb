class RenameSubsectionColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :subsections, :name, :title
  end
end
