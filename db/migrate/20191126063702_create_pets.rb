class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.string :type
      t.integer :age
      t.string :gender
      t.boolean :HDB_approved, default: false
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
