require 'byebug'
class Mailer < ActionMailer::Base
  default from: "chris@excid3.com"
  def notification(user)
    mail(to: 'example', subject: 'Notification') do |format|
      format.html
    end
  end
end
