class Practionner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :appointments, dependent: :delete_all #This line enable to create a seed without problem
  has_many :patients, through: :appointments

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :specialty, length: { maximum: 300 }
  validates :adress, presence: true
end
