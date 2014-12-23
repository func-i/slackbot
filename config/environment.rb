require 'rubygems'
require 'bundler/setup'

require 'dotenv'
Dotenv.load

require 'active_support/all'

# Load Sinatra Framework (with AR)
require 'sinatra'
require 'sinatra/activerecord'

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

# Sinatra configuration
configure do
  set :root, APP_ROOT.to_path
  set :server, :puma
end

# Set up the database and models
require APP_ROOT.join('config', 'database')

# Load the routes / actions
require APP_ROOT.join('app', 'actions')