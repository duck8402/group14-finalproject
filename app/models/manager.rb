class Manager < ApplicationRecord
    has_one :library

    validates_presence_of :headerid, :name
    validates_uniqueness_of :headerid , :phone
    validates_format_of :email,:with => Devise::email_regexp
    validates_format_of :phone, with: /\A0\d{9}\z/
end
