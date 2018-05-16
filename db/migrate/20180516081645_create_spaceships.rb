class CreateSpaceships < ActiveRecord::Migration[5.2]
  def change
    create_table :spaceships do |t|
      t.string :name
      t.string :picture
      t.string :location
      t.integer :price
      t.integer :capacity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
