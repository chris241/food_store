class JoinRestoFood < ApplicationRecord
  belongs_to :food
  belongs_to :restaurant
end
