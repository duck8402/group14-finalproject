class BookPlace < ApplicationRecord
  belongs_to :library
  belongs_to :book
  belongs_to :floor

  validates_presence_of :shelve, :row
  
end
