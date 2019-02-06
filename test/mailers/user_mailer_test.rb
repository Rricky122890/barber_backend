require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "place_status" do
    mail = UserMailer.place_status
    assert_equal "Place status", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
