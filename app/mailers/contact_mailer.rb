class ContactMailer < ApplicationMailer

	def contact(destinataire)
		mail(from: 'remi50avj.c@live.fr', to: destinataire,
			subject: "Envoi test :)")
	end

end
