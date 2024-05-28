class Prop < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  validates :name, uniqueness: true
  validates :description, :price, presence: true
  validates :category, inclusion: { in: %w[cars fantasy series movies weapons clothes real-life stuff action drama comedy]}
end
