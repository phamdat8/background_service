$LOAD_PATH.unshift '.'

require 'config/setup'
require 'lib/frack'
require 'app/controllers/users_controller'
require 'app/models/user'


use Rack::Static, root: 'public', urls: ['/images', '/js', '/css']
use Rack::ContentLength
use Rack::Reloader, 0
use Frack::Router do
  match '/' => 'users#index'
  match '/mail' => 'users#create'
end
run Frack::Application
