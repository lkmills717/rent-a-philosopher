class Philosopher < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :quote, presence: true
<<<<<<< HEAD
  include PgSearch::Model
  pg_search_scope :search_by_name_and_quote,
    against: [ :name, :quote ],
    using: {
      tsearch: { prefix: true } 
    }
=======
  validates :worth, presence: true
>>>>>>> 9ac9faa71a740bfe499b57c718132af261fd3111
end
