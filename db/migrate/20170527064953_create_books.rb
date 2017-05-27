class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.text :description
      t.string :types
      t.text :url
      t.string :picture
      t.string :author

      t.timestamps
    end
  end
end
