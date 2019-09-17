# Load the Rails application.
require_relative 'application'
# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.smtp_settings = {  
  address: "smtp.gmail.com",
  port: 587,
  domain: "foodsstore.herokuapp.com",
  authentication: "plain",
  enable_starttls_auto: true,
  user_name: ENV["GMAIL_USERNAME"],
  password: ENV["GMAIL_PASSWORD"]
}