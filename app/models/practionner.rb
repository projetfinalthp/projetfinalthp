class Practionner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :appointments, dependent: :delete_all #erreur de violation de foreign key, cette ligne permet de créer le seed sans encombre 
  has_many :patients, through: :appointments
end
