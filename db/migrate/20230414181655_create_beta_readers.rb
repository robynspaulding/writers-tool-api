class CreateBetaReaders < ActiveRecord::Migration[7.0]
  def change
    create_table :beta_readers do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :feedback_notes

      t.timestamps
    end
  end
end
