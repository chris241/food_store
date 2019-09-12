class Command < ApplicationRecord
    has_many :join_com_menus
    has_many :menus, through: :join_com_menus
    belongs_to :client
end
