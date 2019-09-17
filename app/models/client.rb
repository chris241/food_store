																																																																							class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_one_attached :avatar
  has_many :reservations
  has_one :command
  has_many :restaurants, through: :reservations
  after_create :welcome_send

  def welcome_send
    ClientMailer.welcome_email(self).deliver_now
  end
end
