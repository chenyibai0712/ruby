class LoanLog < ApplicationRecord
  def self.findall(id)
    if id.nil?
      find_by_sql("select loan_logs.* from loan_logs")
    else
      find_by_sql("select loan_logs.* from loan_logs where book_name='#{id}'")
    end
  end
end
