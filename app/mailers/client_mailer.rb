class ClientMailer < ApplicationMailer
	default from: 'https://foodsstore.herokuapp.com'
  def welcome_email(client)
    #on récupère l'instance client pour ensuite pouvoir la passer à la view en @client
    @client = client 
    #on définit une variable @url qu'on utilisera dans la view d’e-mail

    @url  = 'https://foodsstore.herokuapp.com' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @client.email, subject: 'Bienvenue sur notre site !')

  end

  def reservation_email(client)
  	@client = client
  	@url = "https://foodsstore.herokuapp.com"
  	mail(to: "", subject: 'Réservation prise en compte !')
  end
end
