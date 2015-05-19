class Article < ActiveRecord::Base
	belongs_to :user
	validates :title, presence: true
	validates :body, presence: true
	validates :price, presence: true
	validates :price, numericality: true

end
