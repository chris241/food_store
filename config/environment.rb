# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
require 'mailjet'
Mailjet.configure do |config|
config.api_key = '67bc69ef6c6e913806f8e378467143fa'
config.secret_key = '736f7480d41ae481568b42907791e6dd'
config.api_version = "v3.1"
end
variable = Mailjet::Send.create(messages: [{
  'From'=> {
    'Email'=> 'aomine280498@gmail.com',
    'Name'=> 'Aro'
  },
  'To'=> [
    {
      'Email'=> 'aomine280498@gmail.com',
      'Name'=> 'Aro'
    }
  ],
  'Subject'=> 'Greetings from Mailjet.',
  'TextPart'=> 'My first Mailjet email',
  'HTMLPart'=> '<h3>Dear passenger 1, welcome to <a href=\'https://www.mailjet.com/\'>Mailjet</a>!</h3><br />May the delivery force be with you!',
  'CustomID' => 'AppGettingStartedTest'
}]
)
p variable.attributes['Messages']