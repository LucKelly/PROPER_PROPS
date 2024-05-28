class Prop < ApplicationRecord
  has_one_attached :photo

  belongs_to :user
  has_many :users, through: :bookings
end
