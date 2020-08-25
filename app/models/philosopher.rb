class Philosopher < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  validates :name, presence: true
  validates :quote, presence: true
end
