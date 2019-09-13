class ReservationMailer < ApplicationMailer
	default from: 'no-reply@monsite.fr'
 
  def confirmation_reservation_email(reservation)
    #on récupère l'instance reservation pour ensuite pouvoir la passer à la view en @reservation
    @reservation = reservation 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://www.FoodStore.mg' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: "", subject: 'Votre réservation a été prise en compte') 
  end
end
