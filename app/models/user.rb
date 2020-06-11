class User < ActiveRecord::Base 
    
    has_one :team
    has_secure_password
    validates :username, uniqueness: true

end 