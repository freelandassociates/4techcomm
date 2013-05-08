class UserMailer < ActionMailer::Base
  # default to: "info@4techcomm.com"
  default to: "paulsimpsonparry@gmail.com"

  def contact_from_website(reason_for_request, first_name, last_name, email,
										phone, company, message, newsletter_signup)
    @greeting = "Hi"
	@reason_for_request = reason_for_request
	@first_name = first_name
	@last_name = last_name
	@email = email
	@phone = phone
	@company = company
	@message = message
	@newsletter_signup = newsletter_signup

    # mail to: "info@4techcomm.com", subject: "4Tech Communications Website Inquiry" 
    mail from: email, subject: "4Tech Communications Website Inquiry" 
  end
end
