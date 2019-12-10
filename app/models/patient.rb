class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :appointments, dependent: :delete_all #This line enable to create a seed without problem
  has_many :practionners, through: :appointments

  has_many :data_shows, dependent: :delete_all
  has_many :days, through: :data_shows

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :birth, 

  validate :validate_age


  def validate_age
      if birth.present? && birth.to_datetime > 18.years.ago.to_datetime
          errors.add(:birth, 'Vous devez être majeur')
      end
  end

end
