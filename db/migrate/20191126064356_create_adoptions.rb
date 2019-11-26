class CreateAdoptions < ActiveRecord::Migration[5.2]
  def change
    create_table :adoptions do |t|
      t.string :status
      t.references :owner, foreign_key: true
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
