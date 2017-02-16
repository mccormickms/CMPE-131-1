VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

class User < ApplicationRecord
    before_save { self.email = email.downcase}
    validates :name, presence:true, length: {maximum: 64}
    validates :email, presence:true, length: {maximum: 256},
                        format: {with: VALID_EMAIL_REGEX},
                        uniqueness: {case_sensitive: false}


has_secure_password
end