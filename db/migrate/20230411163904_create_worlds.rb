class CreateWorlds < ActiveRecord::Migration[7.0]
  def change
    create_table :worlds do |t|
      t.integer :project_id
      t.string :name
      t.string :time_period
      t.text :physics
      t.text :culture
      t.text :misc1
      t.text :misc2
      t.text :misc3

      t.timestamps
    end
  end
end
