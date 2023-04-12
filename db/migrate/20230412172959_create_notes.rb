class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.integer :project_id
      t.string :note_title
      t.string :chapter_title
      t.text :note
      t.string :source_url

      t.timestamps
    end
  end
end
