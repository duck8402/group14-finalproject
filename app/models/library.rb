class Library < ApplicationRecord
  belongs_to :manager
  has_many :loans
  has_many :member
  has_many :staff
  has_many :book_reviews
  has_many :book_places
  has_many :book
  

  validates_presence_of :library_id, :address
  validates_uniqueness_of :library_id, :address
  validates_numericality_of :no_staff
end
