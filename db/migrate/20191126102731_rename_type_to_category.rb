class RenameTypeToCategory < ActiveRecord::Migration[5.2]
  def change
    rename_column :pets, :type, :category
  end
end
