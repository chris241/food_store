class JoinResFood < ApplicationRecord

  belongs_to :reservation
  belongs_to :food

end
