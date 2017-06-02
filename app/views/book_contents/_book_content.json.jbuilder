json.extract! book_content, :id, :book_name, :book_content, :book_chapter, :book_id, :created_at, :updated_at
json.url book_content_url(book_content, format: :json)
