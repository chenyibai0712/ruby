class CreateLoanLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :loan_logs do |t|
      t.string :book_name
      t.string :loaner_name
      t.string :loan_status

      t.timestamps
    end
  end
end
