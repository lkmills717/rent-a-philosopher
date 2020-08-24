class Philosopher < ApplicationRecord
  belongs_to :user
  has_many :reviews
  validates :name, presence: true
  validates :quote, presence: true
end
