require 'sidekiq'
require 'action_mailer'
require_relative '../mailers/mailer'
require_relative '../../config/setup'
class Worker
    include Sidekiq::Worker
    def perform(user)
      Mailer.notification(user).deliver_now
    end
end
