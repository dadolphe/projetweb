class Article < ActiveRecord::Base
	belongs_to :user
	validates :title, presence: true
	validates_length_of :title, maximum: 30
	validates :body, presence: true
	validates :price, presence: true
	validates :price, numericality: true
	
	mount_uploader :image1, ImageUploader
	mount_uploader :image2, ImageUploader
	mount_uploader :image3, ImageUploader
	mount_uploader :image4, ImageUploader

end
