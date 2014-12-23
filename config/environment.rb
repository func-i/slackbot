require 'rubygems'
require 'bundler/setup'

require 'dotenv'
Dotenv.load

require 'active_support/all'

# Load Sinatra Framework (with AR)
require 'sinatra'
require 'sinatra/activerecord'

require 'slack-notifier'
require 'pry-byebug'

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

# Sinatra configuration
configure do
  set :root, APP_ROOT.to_path
  set :server, :puma
end

# Set up the database and models
require APP_ROOT.join('config', 'database')

# Initialize!
require APP_ROOT.join('config', 'initializer')

# Load the routes / actions
require APP_ROOT.join('app', 'actions')

# Bring in the bots!
require APP_ROOT.join('app', 'bot')
require APP_ROOT.join('app', 'bots', 'lmgtfy')