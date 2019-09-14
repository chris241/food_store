class Food < ApplicationRecord
	has_one_attached :foodavatar
	belongs_to :menu
end
