# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

require 'mailjet'
Mailjet.configure do |config|
config.api_key = '67bc69ef6c6e913806f8e378467143fa'
config.secret_key = '736f7480d41ae481568b42907791e6dd'
config.api_version = "v3.1"
export $RECIPIENT_EMAIL='current_client.email'
end
variable = Mailjet::Send.create(messages: [{
  'From'=> {
    'Email'=> 'aomine280498@gmail.com',
    'Name'=> 'Aro'
  },
  'To'=> [
    {
      'Email'=> '$RECIPIENT_EMAIL',
      'Name'=> 'Aro'
    }
  ],
  'Subject'=> 'Greetings from Mailjet.',
  'TextPart'=> 'My first Mailjet email',
  'HTMLPart'=> '<h3>Cher utilisateur, bienvenue sur notre site <a href=\'https://www.foodsstore.herokuapp.com/\'>Foodsstore</a>!</h3><br />On espère vous revoir à très bientôt!',
  'CustomID' => 'AppGettingStartedTest'
}]
)
p variable.attributes['Messages']

ActionMailer::Base.smtp_settings =   {
    :address            => 'in-v3.mailjet.com',
    :port               => 25,
    :domain             => 'gmail.com', #you can also use google.com
    :authentication     => :plain,
    :user_name          => ENV['MAILJET_LOGIN'],
    :password           => ENV['MAILJET_PWD']
}