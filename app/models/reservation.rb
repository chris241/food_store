class Reservation < ApplicationRecord
 has_many :join_res_menus
 has_many :menus, through: :join_res_menus
 belongs_to :client
end
