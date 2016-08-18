class Board < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reservations

  validates :name, presence: true

  # validates :category, presence: true

  validates :size, presence: true, :numericality => { :greater_than => 4, :less_than_or_equal_to => 9 }

  validates :price_per_day, presence: true

  # validates :description, presence: true

  validates :address, presence: true

  # validates :city, presence: true

  # validates :country, presence: true

  validates :automatic_reservation, presence: true

  validates :user, presence: true

end
