class JoinResMenu < ApplicationRecord
  belongs_to :menu
  belongs_to :reservation
end
