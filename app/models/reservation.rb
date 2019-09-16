class Reservation < ApplicationRecord
 has_many :join_res_menus
 has_many :menus, through: :join_res_menus
 belongs_to :client
 belongs_to :restaurant

 after_create :reservation_send

  def reservation_send
    ClientMailer.reservation_email(self).deliver_now
  end
  validates :nbr_person, presence: true, length: {in:1..7}
  validates :date, presence: true 
  validate :date_cannot_be_in_the_past
  def date_cannot_be_in_the_past
      if date < Date.today
            errors.add(:date, "can't be in the past")
        end
    end
end
