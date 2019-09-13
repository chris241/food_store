class Reservation < ApplicationRecord
 has_many :join_res_menus
 has_many :menus, through: :join_res_menus
 belongs_to :client
 belongs_to :restaurant

 after_create :confirmation_reservation_send

  def confirmation_reservation_send
    ReservationMailer.confirmation_reservation_email(self).deliver_now
  end
end
