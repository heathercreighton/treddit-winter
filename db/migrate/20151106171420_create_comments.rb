class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_entry
      t.integer :user_id
      t.integer :score

      t.timestamps null: false
    end
  end
end
