require_relative '../models/worker'
class UsersController < Frack::BaseController
  def index
    render 'users/index'
  end

  def create
    params =  Rack::Request.new(env).params
    Worker.perform_async(params)

  end


end
