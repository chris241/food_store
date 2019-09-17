class Food < ApplicationRecord
	has_one_attached :foodavatar
	belongs_to :menu

	has_one_attached :foodavatar

	has_many :join_com_foods
    has_many :commands, through: :join_com_foods

end
