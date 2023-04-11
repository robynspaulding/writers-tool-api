class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.integer :project_id
      t.string :name
      t.string :birthday
      t.string :age
      t.text :physical_attributes
      t.text :likes
      t.text :dislikes
      t.text :hobbies
      t.string :favorite_food
      t.string :misc1
      t.string :misc2
      t.string :misc3

      t.timestamps
    end
  end
end
