class Staff < ApplicationRecord
  belongs_to :library
  belongs_to :department

  validates_presence_of :staffid, :staffname
  validates_uniqueness_of :staffid, :staffphone
  validates_numericality_of :salary
  validates_format_of :staffphone, with: /\A0\d{9}\z/
end
