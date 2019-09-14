class Reservation < ApplicationRecord
 has_many :join_res_menus
 has_many :menus, through: :join_res_menus
 belongs_to :client
 belongs_to :restaurant

 after_create :reservation_send

  def reservation_send
    ClientMailer.reservation_email(self).deliver_now
  end
end
