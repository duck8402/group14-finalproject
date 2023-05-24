json.extract! loan, :id, :loanid, :library_id, :member_id, :book_id, :loan_date, :due_date, :return_date, :created_at, :updated_at
json.url loan_url(loan, format: :json)
