json.extract! book_review, :id, :library_id, :member_id, :book_id, :rating_id, :comment, :reviewdate, :created_at, :updated_at
json.url book_review_url(book_review, format: :json)
