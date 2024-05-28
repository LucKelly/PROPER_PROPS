class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :prop
  validates :user_id, presence: true
  validates :prop_id, presence: true
end
