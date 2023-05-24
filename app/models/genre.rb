class Genre < ApplicationRecord
    has_many :book

    validates_presence_of :genre_id, :genre_name
    validates_uniqueness_of :genre_id, :genre_name

end
