class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    validates_presence_of :curl_pattern, :curl_type, :porosity, :density, :width
    has_many :days
end
