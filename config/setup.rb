require 'active_record'
require "letter_opener"
require "action_mailer"

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  encoding: "unicode",
  host: "localhost",
  username: "phamdat",
  password: "123456",
  database: "demo"
)


ActionMailer::Base.view_paths = File.expand_path('../../app/views/', __FILE__)
# ActionMailer::Base.delivery_method = :smtp

#
ActionMailer::Base.add_delivery_method :letter_opener, LetterOpener::DeliveryMethod, :location => File.expand_path('../tmp/letter_opener', __FILE__)
ActionMailer::Base.delivery_method = :letter_opener
