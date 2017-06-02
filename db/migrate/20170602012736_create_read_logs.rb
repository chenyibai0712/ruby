class CreateReadLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :read_logs do |t|
      t.string :reader
      t.text :read_book

      t.timestamps
    end
  end
end
