class JoinComMenu < ApplicationRecord
  belongs_to :command
  belongs_to :menu
end
