class User < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :firstname, presence: true, length: { maximum: 50 }
	validates :promo, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :mail, presence: true,format: { with: VALID_EMAIL_REGEX }
	validates :phonenumber, presence: true
  	validates :password, length: { minimum: 6 }
	has_secure_password


end
