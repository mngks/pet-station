class AddPhotoToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :photo, :string
  end
end
