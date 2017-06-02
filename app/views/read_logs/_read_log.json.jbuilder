json.extract! read_log, :id, :reader, :read_book, :created_at, :updated_at
json.url read_log_url(read_log, format: :json)
