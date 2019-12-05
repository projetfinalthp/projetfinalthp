class Practionner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :appointments, dependent: :delete_all #This line enable to create a seed without problem
  has_many :patients, through: :appointments

  after_create :welcome_send

  def welcome_send
    PractionnerMailer.welcome_email(self).deliver_now
  end

end
