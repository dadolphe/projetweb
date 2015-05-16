class Article < ActiveRecord::Base
	validates :title, presence: true
	validates :body, presence: true
	validates :price, presence: true
	validates :price, numericality: { only_integer: true }


  def report(user,nomarticle)
		#faire un popup genre : signalement envoyé, votre demande sera traité dans le plus court délai
		UserMailer.report_email(user,nomarticle).deliver_now
  end
end
