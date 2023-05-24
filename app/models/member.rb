class Member < ApplicationRecord
  belongs_to :library
  has_many :book_reviews
  has_many :loans

  validates_presence_of :member_id, :name, :date_of_birth, :membership_status
  validates_format_of :phone, with: /\A0\d{9}\z/
  validates_uniqueness_of :member_id, :phone


end
