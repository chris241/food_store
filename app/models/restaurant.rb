class Restaurant < ApplicationRecord
	has_many :reservations
	has_many :clients, through: :reservations
	has_one_attached :restoavatar
	
end
