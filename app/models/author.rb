class Author < ApplicationRecord
    has_many :book

    validates_presence_of :authorname, :date_of_birth
    validates_uniqueness_of :authorname
    
end
