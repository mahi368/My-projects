class OrderMailer < ApplicationMailer

	def new_order_email
	    @order = params[:order]
	    mail(to: "anandyuvasoft138@gmail.com",cc: "abhijeetyuvasoft370@gmail.com" , bcc: "sonimahima70@gmail.com" , subject: "A message from mahi")		
	end
end
