class Restaurant < ApplicationRecord
	has_many :reservations
	has_many :clients, through: :reservations
	has_one_attached :restoavatar
	belongs_to :gerant

	has_many :join_resto_foods
	has_many :foods, through: :join_resto_foods

end
