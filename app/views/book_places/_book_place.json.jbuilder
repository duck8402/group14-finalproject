json.extract! book_place, :id, :library_id, :book_id, :floor_id, :shelve, :row, :created_at, :updated_at
json.url book_place_url(book_place, format: :json)
