class Reservation < ApplicationRecord
  belongs_to :surfer, class_name: "User", foreign_key: "user_id"
  belongs_to :board
  has_one :owner, through: :board, class_name: "User", foreign_key: "user_id", source: "user"


  validates :start_date, presence: true
  validates :end_date, presence: true
end
