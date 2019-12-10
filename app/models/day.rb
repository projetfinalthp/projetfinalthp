class Day < ApplicationRecord
  has_many :data_shows, dependent: :delete_all #This line enable to create a seed without problem
  has_many :patients, through: :data_shows

  validates :date, presence: true
  validates :hours_of_sleep, presence: true, length: {maximum: 2}
  validates :mood, presence: true
  validates :treatment, presence: true
end
