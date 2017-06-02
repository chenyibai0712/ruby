class AddBookStatusToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :book_status, :integer
  end
end
