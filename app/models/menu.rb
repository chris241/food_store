class Menu < ApplicationRecord
  has_many :join_res_menus
  has_many :reservations, through: :join_res_menus

  has_many :join_com_menus
  has_many :commands, through: :join_com_menus

  has_many :foods
end
