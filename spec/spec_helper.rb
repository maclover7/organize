ENV['RACK_ENV'] = 'test'

require 'rack/test'
include Rack::Test::Methods
