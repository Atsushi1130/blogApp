# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
	def contact
		contact = Inquery.new(name: 'テスト　太郎', message: 'テスト問い合わせメッセージ')

		ContactMailer.send_mail(contact)
	end
end
