class ClientMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
 
  def welcome_email(client)
    #on récupère l'instance client pour ensuite pouvoir la passer à la view en @client
    @client = client 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://www.FoodStore.mg' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @client.email, subject: 'Bienvenue sur notre site !')
  end

  def reservation_email(client)
  	@client = client
  	@url = 'https://www.FoodStore.mg'
  	mail(to: @client, subject: 'Réservation')
  end
end
