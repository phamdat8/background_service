require 'byebug'
require_relative '../models/worker'
class UsersController < Frack::BaseController
  def route
    case env['REQUEST_METHOD']
    when 'POST'
      create
    else
      index
    end
  end


  def index
    render 'users/index'
  end

  def create
    # Mailer.notification('email').deliver_now
    Worker.perform_async("phamdat@gmail.com")

  end


end
