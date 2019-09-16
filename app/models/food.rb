class Food < ApplicationRecord
	belongs_to :menu
	has_many :join_com_foods
  has_many :commands, through: :join_com_foods
end
