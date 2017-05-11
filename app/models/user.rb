VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

class User < ApplicationRecord
		has_many :jobs
    before_save { self.email = email.downcase}
    validates :name, presence:true, length: {maximum: 64}
    validates :email, presence:true, length: {maximum: 256},
                        format: {with: VALID_EMAIL_REGEX},
                        uniqueness: {case_sensitive: false}
	has_secure_password
	validates :password, presence: true, length: {minimum: 6 }

	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
																									BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end

	acts_as_commontator

end
