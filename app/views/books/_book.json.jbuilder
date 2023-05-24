json.extract! book, :id, :library_id, :bookid, :title, :author_id, :isbn, :publication_year, :genre_id, :description, :avaibility, :created_at, :updated_at
json.url book_url(book, format: :json)
