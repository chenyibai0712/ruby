json.extract! loan_log, :id, :book_name, :loaner_name, :loan_status, :created_at, :updated_at
json.url loan_log_url(loan_log, format: :json)
