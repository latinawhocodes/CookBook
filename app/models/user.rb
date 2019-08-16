class User < ActiveRecord::Base
    has_secure_password

    has_many :cards
    
end 

#add validation methods once app is working!