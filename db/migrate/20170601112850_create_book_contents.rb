class CreateBookContents < ActiveRecord::Migration[5.1]
  def change
    create_table :book_contents do |t|
      t.string :book_name
      t.text :book_content
      t.string :book_chapter
      t.integer :book_id

      t.timestamps
    end
  end
end
