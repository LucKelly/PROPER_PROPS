class Prop < ApplicationRecord
  has_one_attached :photo

  belongs_to :user
  has_many :users, through: :bookings
  validates :name, uniqueness: true
  validates :name, :description, presence: true
  validates :price, numericality: { only_integer: true }
  validates :category, inclusion: { in: %w[vehicles accessories weapons clothing other]}
end
