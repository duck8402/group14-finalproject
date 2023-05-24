class Book < ApplicationRecord
  belongs_to :library
  belongs_to :author
  belongs_to :genre
  has_many :loans
  has_many :book_reviews
  has_many :book_places

  validates_presence_of :bookid, :title, :isbn, :publication_year, :avaibility
  validates_numericality_of :publication_year
  validates_uniqueness_of :bookid, :isbn

end
