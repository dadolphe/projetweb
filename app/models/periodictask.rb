class Periodictask < ActiveRecord::Base
	
	def self.mail_recapitulatif
		articles = Article.all
		UserMailer.mail_recapitulatif(articles).deliver_now
	end
end
