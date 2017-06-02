class AddBookLoanerToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :book_loaner, :string
  end
end
