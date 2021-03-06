class User < ApplicationRecord

    has_many :radlibs
    validates :username, 
        presence: true, 
        uniqueness: { case_sensitive: false }, 
        length: { minimum: 3, maximum: 25 }
    VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, 
        presence: true, 
        uniqueness: { case_sensitive: false }, 
        length: { maximum: 105 }, 
        format: { with: VALID_EMAIL }
        
end