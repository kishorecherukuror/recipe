require 'test_helper'

class RecipeMailerTest < ActionMailer::TestCase
  test "send_recipe" do
    mail = RecipeMailer.send_recipe
    assert_equal "Send recipe", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "spam" do
    mail = RecipeMailer.spam
    assert_equal "Spam", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
