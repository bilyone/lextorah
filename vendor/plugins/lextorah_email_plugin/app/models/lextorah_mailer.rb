class LextorahMailer < ActionMailer::Base
  def email(recipient, subject, message, sent_at = Time.now)
    @subject = subject
    @recipients = recipient
    @from = 'no-reply@lextorah.com'
    @sent_on = sent_at
    @body["title"] = 'This is title'
    @body["email"] = 'sender@yourdomain.com'
    @body["message"] = message
    @headers = {}
  end
end