class CreateBookTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :book_types do |t|
      t.string :types_name
      t.string :types_tag
      t.string :types_abstract

      t.timestamps
    end
  end
end
