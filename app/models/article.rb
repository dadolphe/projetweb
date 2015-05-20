class Article < ActiveRecord::Base
	belongs_to :user
	validates :title, presence: true
	validates :body, presence: true
	validates :price, presence: true
	validates :price, numericality: true
	
	mount_uploader :images, ImageUploader

end
