class Restaurant < ApplicationRecord
	has_many :reservations
	has_many :clients, through: :reservations
	has_one_attached :restoavatar

    belongs_to :gerant , optional: true
	has_many :join_resto_foods
	has_many :foods, through: :join_resto_foods

	geocoded_by :address
	after_validation :geocode
end
