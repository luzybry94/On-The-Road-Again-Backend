class User < ApplicationRecord
    has_many :trips
    has_many :notes
    
    has_secure_password
end
