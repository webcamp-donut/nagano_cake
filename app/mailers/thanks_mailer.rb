class ThanksMailer < ApplicationMailer
	default from: 'notification@example.com'

	def thanks_email(order)
		@order = order
		@member = Member.find(@order.member_id)
		mail(to: @member.email, subject: '【ながのCAKE】ご購入ありがとうございました。')
	end

end
