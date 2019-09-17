# Load the Rails application.
# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => SENDGRID_LOGIN,
  :password => SENDGRID_PWD,
  :domain => 'gmail.com',
  :address => 'smtp.sendgrid.net',
  :port => 25,
  :authentication => :plain,
  :enable_starttls_auto => true
}