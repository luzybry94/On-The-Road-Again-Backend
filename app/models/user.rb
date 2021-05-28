class User < ApplicationRecord
    has_many :trips
    validates :email, uniqueness: { case_sensitive: false }
    
    has_secure_password
end
