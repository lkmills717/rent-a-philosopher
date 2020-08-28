class Philosopher < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :quote, presence: true
  validates :worth, presence: true
end
