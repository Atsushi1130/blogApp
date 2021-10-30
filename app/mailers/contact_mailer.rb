class ContactMailer < ApplicationMailer
	def send_mail(contact)
		@contact = contact
		mail(
			from: 'system@example.com',
			to: 'atsu.1130.2b@gmail.com',
			subject: 'お問い合わせ'
		)
	end
end
