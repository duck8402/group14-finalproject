class Department < ApplicationRecord
    has_many :staff 

    validates_presence_of :departmentid, :departmentname
    validates_uniqueness_of :departmentid, :departmentname
end
