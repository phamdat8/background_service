class Mailer < ActionMailer::Base
  default from: "chris@excid3.com"
  def notification(email)
    mail(to: email, subject: "New notification") do |format|
      format.html
    end
  end
end
