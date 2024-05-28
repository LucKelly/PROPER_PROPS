class Prop < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  validates :name, uniqueness: true
  validates :description, :price, presence: true
  validates :category, inclusion: { in: %w[vehicles accessories weapons clothing other]}
end
