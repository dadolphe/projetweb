class User < ActiveRecord::Base
<<<<<<< HEAD
	validates :name, presence: true
	validates :firstname, presence: true
	validates :promo, presence: true
	validates :mail, presence: true
	validates :phonenumber, presence: true
=======
>>>>>>> 1c7076726fdadea6190eda369b1e862b74e665ab

	has_secure_password
end
