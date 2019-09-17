# Load the Rails application.
require_relative 'application'
# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings =   {
    :address            => 'smtp.gmail.com',
    :port               => 25,
    :domain             => 'gmail.com', #you can also use google.com
    :authentication     => :plain,
    :user_name          => 'nambininag33k@gmail.com',
    :password           => 'coderbrain'
  }
