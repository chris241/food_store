class Reservation < ApplicationRecord
 has_many :join_res_menus
 has_many :menus, through: :join_res_menus

 belongs_to :client
 belongs_to :restaurant

 has_many :join_res_foods
 has_many :foods, through: :join_res_foods
  validates :nbr_person, presence: true, length: {in:1..7}
  validates :date, presence: true
  validate :date_cannot_be_in_the_past
  validates :client, presence: true
  def date_cannot_be_in_the_past
      if date < Date.today
            errors.add(:date, "can't be in the past")
        end
    end
end
