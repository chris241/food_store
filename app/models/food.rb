class Food < ApplicationRecord
	belongs_to :menu
	has_one_attached :foodavatar
end
