class UserMailer < ApplicationMailer
	def report_email(user,annonce)
		@user = user
		@annonce = annonce
		@url  = 'liende mon site, ici localhost:3000'
		mail(to: "masamune31@hotmail.fr", subject: '[ensiieboncoin]Annonce abusive ')
	end

	def mail_recapitulatif(articles)
		@articles = articles
		@url  = 'liende mon site, ici localhost:3000'
		mail(to: "masamune31@hotmail.fr", subject: '[ensiieboncoin]Recapitulatif des annonces')
	end
end
