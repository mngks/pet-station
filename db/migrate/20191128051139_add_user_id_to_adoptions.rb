class AddUserIdToAdoptions < ActiveRecord::Migration[5.2]
  def change
    remove_reference :adoptions, :owner, index: true, foreign_key: true
    add_reference :adoptions, :user, index: true, foreign_key: true
  end
end
