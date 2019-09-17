class JoinComFood < ApplicationRecord
  belongs_to :food
  belongs_to :command
end
