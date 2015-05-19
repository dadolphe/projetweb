class User < ActiveRecord::Base
	has_many :articles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :name, presence: true, length: { minimum:2, maximum: 30 }
	validates :firstname, presence: true, length: { minimum:2, maximum: 30 }
	validates :promo, presence: true, length: { is:4 }
	validates :promo, numericality: { only_integer: true }
	validates :phonenumber, presence: true 
	validates :phonenumber, numericality: { only_integer: true }
end
