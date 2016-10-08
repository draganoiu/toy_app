class User < ActiveRecord::Base
	has_many :articoles
	before_save {self.email=email.downcase}

	validates :name, presence: true, uniqueness: {case_sensitive: false}, 
	length: {minimum: 3,maximum: 25}

	VALID_EMAIL_REGEX = /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/i



	validates :email,presence: true, length: {maximum: 105},
	uniqueness: {case_sensitive: false},
	format: {with: VALID_EMAIL_REGEX}

	has_secure_password


end
