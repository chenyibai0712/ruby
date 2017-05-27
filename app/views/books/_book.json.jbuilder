json.extract! book, :id, :name, :price, :description, :types, :url, :picture, :author, :created_at, :updated_at
json.url book_url(book, format: :json)
