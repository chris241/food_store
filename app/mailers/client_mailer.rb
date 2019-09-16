class ClientMailer < ApplicationMailer
	 default from: 'no-reply@monsite.fr'
  def welcome_email(client)
    #on récupère l'instance client pour ensuite pouvoir la passer à la view en @client
    @client = client 
    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://www.mailjet.com' 
    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @client.email, subject: 'Bienvenue sur notre site !')
end
end
