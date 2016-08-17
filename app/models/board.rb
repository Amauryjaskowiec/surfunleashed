class Board < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :name, presence: true

  validates :category, presence: true

  validates :size, presence: true

  validates :price_per_day, presence: true

  validates :description, presence: true

  validates :address, presence: true

  validates :city, presence: true

  validates :country, presence: true

  validates :automatic_reservation, presence: true

  validates :user, presence: true

end
