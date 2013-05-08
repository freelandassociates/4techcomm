class ContactController < ApplicationController
	
	def sendmail
		
		@reason_for_request = params['Reason for request']
		@first_name = params['firstname']
		@last_name = params['lastname']
		@email = params['email']
		@phone = params['phone']
		@company = params['company']
		@message = params['message']
		@newsletter_signup = params['Newsletter Signup']
		
		if (@reason_for_request.blank? || 
			@first_name.blank? ||
			@last_name.blank? ||
			@email.blank? ||
			@phone.blank? ||
			@company.blank?)

			render 'static/contact'

		else
			UserMailer.contact_from_website(@reason_for_request, @first_name, @last_name, @email,
										@phone, @company, @message, @newsletter_signup).deliver
		end

	end

end
