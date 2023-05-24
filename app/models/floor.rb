class Floor < ApplicationRecord
    has_many :book_places

    validates_presence_of :floor_number
    validates_numericality_of :floor_number
    validates_uniqueness_of :floor_number
end
