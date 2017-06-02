class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :book_id
      t.integer :score
      t.text :comment
      t.string :user_name

      t.timestamps
    end
  end
end
