class Rating < ApplicationRecord
    has_many :book_reviews

    validates_presence_of :rating
    validates_uniqueness_of :rating
end
