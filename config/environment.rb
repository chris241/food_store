# Load the Rails application.
require_relative 'application'
require 'mailjet'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_LOGIN'],
  :password => ENV['SENDGRID_PWD'],
  :domain => 'gmail.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain
}
