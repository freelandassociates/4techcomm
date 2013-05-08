require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "contact_from_website" do
    mail = UserMailer.contact_from_website
    assert_equal "Contact from website", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
