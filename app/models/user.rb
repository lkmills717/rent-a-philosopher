class User < ApplicationRecord
    has_many :bookings
    has_many :philosophers, through: :bookings
    user = ["student", "agent"]
    validates :role, inclusion: { in %w(student agent) }
end