class UserMailer < ApplicationMailer
	def report_email(user,annonce)
		@user = user
		
		@annonce = annonce
		temp = liste_admins
		if temp && temp.to_s != ""
			mail(bcc: temp, subject: '[ensiieboncoin]Annonce abusive ')
		end
		
	end

	def mail_recapitulatif(articles)
		@articles = articles
		temp = liste_users
		if temp && temp.to_s != ""
			mail(bcc: temp, subject: '[ensiieboncoin]Recapitulatif des annonces')
		end
	end

	private
	def liste_admins
		admins = ""
		User.where(admin: true).find_each do |table|
			admins = table.email + " " + admins
			
		end
		admins = admins.split
		admins = admins.join(',')
		return admins
	end

	def liste_users
		listeusers = ""
		User.find_each do |table|
			listeusers = table.email + " " + listeusers
			
		end
		listeusers = listeusers.split
		listeusers = listeusers.join(',')
		return listeusers
	end
end
