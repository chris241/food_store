# Load the Rails application.
require_relative 'application'
require 'mailjet'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['MAILJET_LOGIN'],
  :password => ENV['MAILJET_PWD'],
  :domain => 'yopmail.com',
  :address => 'in-v3.mailjet.com',
  :port => 587,
  :authentication => :plain
}
