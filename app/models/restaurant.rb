class Restaurant < ApplicationRecord
	has_many :reservations
	has_many :clients, through: :reservations
	has_one_attached :restoavatar
	belongs_to :gerant

	geocoded_by :address
	after_validation :geocode
	
end
