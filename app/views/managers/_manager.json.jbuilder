json.extract! manager, :id, :managerid, :name, :phone, :email, :created_at, :updated_at
json.url manager_url(manager, format: :json)
